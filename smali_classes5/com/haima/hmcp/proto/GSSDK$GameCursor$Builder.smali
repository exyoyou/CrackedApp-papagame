.class public final Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/proto/GSSDK$GameCursorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/proto/GSSDK$GameCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;",
        ">;",
        "Lcom/haima/hmcp/proto/GSSDK$GameCursorOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cursorHeight_:I

.field private cursorPosBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
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

.field private cursorPos_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

.field private cursorStyle_:I

.field private cursorWidth_:I

.field private gameCursorDataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;",
            "Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData$Builder;",
            "Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private gameCursorData_:Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

.field private gameCursorSyncSeqNum_:I

.field private iconCursorHotSpotBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
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

.field private iconCursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

.field private showOrHide_:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPos_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorStyle_:I

    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorData_:Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 7
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 8
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 9
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPos_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorStyle_:I

    .line 12
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorData_:Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 13
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 14
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/haima/hmcp/proto/GSSDK$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/haima/hmcp/proto/GSSDK$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;-><init>()V

    return-void
.end method

.method private getCursorPosFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
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
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPosBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->getCursorPos()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

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
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPosBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPos_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPosBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$8100()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private getGameCursorDataFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;",
            "Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData$Builder;",
            "Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorDataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->getGameCursorData()Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

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
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorDataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorData_:Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorDataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getIconCursorHotSpotFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
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
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpotBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->getIconCursorHotSpot()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

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
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpotBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpotBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->access$10900()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->getCursorPosFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->getGameCursorDataFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->getIconCursorHotSpotFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->build()Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->build()Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/haima/hmcp/proto/GSSDK$GameCursor;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/haima/hmcp/proto/GSSDK$GameCursor;
    .locals 5

    .line 3
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/haima/hmcp/proto/GSSDK$1;)V

    .line 4
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget-boolean v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->showOrHide_:Z

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->access$11102(Lcom/haima/hmcp/proto/GSSDK$GameCursor;Z)Z

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPosBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPos_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->access$11202(Lcom/haima/hmcp/proto/GSSDK$GameCursor;Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->access$11202(Lcom/haima/hmcp/proto/GSSDK$GameCursor;Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    :goto_1
    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x4

    .line 9
    :cond_3
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorSyncSeqNum_:I

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->access$11302(Lcom/haima/hmcp/proto/GSSDK$GameCursor;I)I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x8

    .line 10
    :cond_4
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorStyle_:I

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->access$11402(Lcom/haima/hmcp/proto/GSSDK$GameCursor;I)I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x10

    .line 11
    :cond_5
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorDataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_6

    .line 12
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorData_:Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->access$11502(Lcom/haima/hmcp/proto/GSSDK$GameCursor;Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    goto :goto_2

    .line 13
    :cond_6
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->access$11502(Lcom/haima/hmcp/proto/GSSDK$GameCursor;Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    :goto_2
    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x20

    .line 14
    :cond_7
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpotBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_8

    .line 15
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->access$11602(Lcom/haima/hmcp/proto/GSSDK$GameCursor;Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    goto :goto_3

    .line 16
    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->access$11602(Lcom/haima/hmcp/proto/GSSDK$GameCursor;Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    :goto_3
    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_9

    or-int/lit8 v3, v3, 0x40

    .line 17
    :cond_9
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorWidth_:I

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->access$11702(Lcom/haima/hmcp/proto/GSSDK$GameCursor;I)I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    or-int/lit16 v3, v3, 0x80

    .line 18
    :cond_a
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorHeight_:I

    invoke-static {v0, v1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->access$11802(Lcom/haima/hmcp/proto/GSSDK$GameCursor;I)I

    .line 19
    invoke-static {v0, v3}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->access$11902(Lcom/haima/hmcp/proto/GSSDK$GameCursor;I)I

    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->clear()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->clear()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->clear()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->clear()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->showOrHide_:Z

    .line 7
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 8
    iget-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPosBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 9
    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPos_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    .line 12
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorSyncSeqNum_:I

    and-int/lit8 v1, v1, -0x5

    .line 13
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorStyle_:I

    and-int/lit8 v1, v1, -0x9

    .line 14
    iput v1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 15
    iget-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorDataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 16
    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorData_:Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 18
    :goto_1
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 19
    iget-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpotBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 20
    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    goto :goto_2

    .line 21
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 22
    :goto_2
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    .line 23
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorWidth_:I

    and-int/lit8 v1, v1, -0x41

    .line 24
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorHeight_:I

    and-int/lit16 v0, v1, -0x81

    .line 25
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearCursorHeight()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x81

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorHeight_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearCursorPos()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPosBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPos_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit8 v0, v0, -0x3

    .line 18
    .line 19
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearCursorStyle()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorStyle_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearCursorWidth()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorWidth_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    return-object p1
.end method

.method public clearGameCursorData()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorDataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorData_:Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit8 v0, v0, -0x11

    .line 18
    .line 19
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearGameCursorSyncSeqNum()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorSyncSeqNum_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearIconCursorHotSpot()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpotBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit8 v0, v0, -0x21

    .line 18
    .line 19
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    return-object p1
.end method

.method public clearShowOrHide()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->showOrHide_:Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCursorHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorHeight_:I

    .line 2
    .line 3
    return v0
.end method

.method public getCursorPos()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPosBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPos_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

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

.method public getCursorPosBuilder()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->getCursorPosFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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

.method public getCursorPosOrBuilder()Lcom/haima/hmcp/proto/GSSDK$CoordinatePosOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPosBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPos_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

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

.method public getCursorStyle()Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorStyle_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->valueOf(I)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_DEFAULT:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getCursorWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorWidth_:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$GameCursor;
    .locals 1

    .line 3
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$8100()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getGameCursorData()Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorDataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorData_:Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

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
    check-cast v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 19
    .line 20
    return-object v0
.end method

.method public getGameCursorDataBuilder()Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->getGameCursorDataFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getGameCursorDataOrBuilder()Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameDataOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorDataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameDataOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorData_:Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getGameCursorSyncSeqNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorSyncSeqNum_:I

    .line 2
    .line 3
    return v0
.end method

.method public getIconCursorHotSpot()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpotBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

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

.method public getIconCursorHotSpotBuilder()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->getIconCursorHotSpotFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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

.method public getIconCursorHotSpotOrBuilder()Lcom/haima/hmcp/proto/GSSDK$CoordinatePosOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpotBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

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

.method public getShowOrHide()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->showOrHide_:Z

    .line 2
    .line 3
    return v0
.end method

.method public hasCursorHeight()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

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

.method public hasCursorPos()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

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

.method public hasCursorStyle()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

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

.method public hasCursorWidth()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

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

.method public hasGameCursorData()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

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

.method public hasGameCursorSyncSeqNum()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

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

.method public hasIconCursorHotSpot()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

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

.method public hasShowOrHide()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$8200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    .line 6
    .line 7
    const-class v2, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

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

.method public mergeCursorPos(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPosBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPos_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPos_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->newBuilder(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPos_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPos_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 45
    .line 46
    .line 47
    :goto_1
    iget p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/2addr p1, v1

    .line 50
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 51
    .line 52
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 29
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$GameCursor;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$GameCursor;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/haima/hmcp/proto/GSSDK$GameCursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
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

    .line 33
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$GameCursor;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    .line 34
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$GameCursor;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/haima/hmcp/proto/GSSDK$GameCursor;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasShowOrHide()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getShowOrHide()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->setShowOrHide(Z)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasCursorPos()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getCursorPos()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->mergeCursorPos(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasGameCursorSyncSeqNum()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getGameCursorSyncSeqNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->setGameCursorSyncSeqNum(I)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasCursorStyle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getCursorStyle()Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->setCursorStyle(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasGameCursorData()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getGameCursorData()Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->mergeGameCursorData(Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    .line 21
    :cond_5
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasIconCursorHotSpot()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getIconCursorHotSpot()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->mergeIconCursorHotSpot(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    .line 23
    :cond_6
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasCursorWidth()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getCursorWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->setCursorWidth(I)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    .line 25
    :cond_7
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasCursorHeight()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getCursorHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->setCursorHeight(I)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    .line 27
    :cond_8
    invoke-static {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->access$12000(Lcom/haima/hmcp/proto/GSSDK$GameCursor;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    .line 28
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeGameCursorData(Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorDataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 8
    .line 9
    and-int/2addr v0, v1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorData_:Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eq v0, v2, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorData_:Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;->newBuilder(Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorData_:Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorData_:Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

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
    iget p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 49
    .line 50
    or-int/2addr p1, v1

    .line 51
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public mergeIconCursorHotSpot(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpotBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 8
    .line 9
    and-int/2addr v0, v1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

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
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

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
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

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
    iget p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 49
    .line 50
    or-int/2addr p1, v1

    .line 51
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    return-object p1
.end method

.method public setCursorHeight(I)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorHeight_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setCursorPos(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPosBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;->build()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPos_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

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
    iget p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    return-object p0
.end method

.method public setCursorPos(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPosBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorPos_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    return-object p0
.end method

.method public setCursorStyle(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorStyle_:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public setCursorWidth(I)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->cursorWidth_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    return-object p1
.end method

.method public setGameCursorData(Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData$Builder;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorDataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData$Builder;->build()Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorData_:Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData$Builder;->build()Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    return-object p0
.end method

.method public setGameCursorData(Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorDataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorData_:Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    return-object p0
.end method

.method public setGameCursorSyncSeqNum(I)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->gameCursorSyncSeqNum_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setIconCursorHotSpot(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpotBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;->build()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

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
    iget p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    return-object p0
.end method

.method public setIconCursorHotSpot(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpotBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->iconCursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    return-object p1
.end method

.method public setShowOrHide(Z)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->bitField0_:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->showOrHide_:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    return-object p1
.end method
