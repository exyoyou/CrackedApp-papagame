.class public Lcom/join/kotlin/module/hmcloud/pad/HMOpEventMapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/module/hmcloud/pad/OnHMOpEventListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0018\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u000fH\u0016J \u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0016J\u001e\u0010!\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\n2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00060#H\u0016J\u001e\u0010$\u001a\u00020\u00172\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\n0#2\u0006\u0010\u001c\u001a\u00020\u000fH\u0016R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\r0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000f0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000f0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/join/kotlin/module/hmcloud/pad/HMOpEventMapper;",
        "Lcom/join/kotlin/module/hmcloud/pad/OnHMOpEventListener;",
        "<init>",
        "()V",
        "directionMap",
        "",
        "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;",
        "",
        "gamepadMap",
        "",
        "",
        "",
        "keyboardMap",
        "Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;",
        "opEventPool",
        "",
        "opInputData",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lcom/haima/hmcp/beans/HMInputOpData;",
        "getOpInputData",
        "()Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "gamepadEventPool",
        "onKeyItem",
        "",
        "item",
        "Lcom/join/mgps/dto/hmcloud/HMKeyItem;",
        "onKeyPress",
        "name",
        "pressed",
        "onTrackball",
        "x",
        "",
        "y",
        "onDpad",
        "directions",
        "",
        "onCombineKey",
        "keys",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final directionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gamepadEventPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gamepadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyboardMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final opEventPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final opInputData:Lkotlinx/coroutines/flow/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/haima/hmcp/beans/HMInputOpData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [Lkotlin/Pair;

    .line 2
    sget-object v3, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Up:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 3
    sget-object v3, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Down:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v4

    .line 4
    sget-object v3, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Left:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v6

    .line 5
    sget-object v3, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Right:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v8, 0x3

    aput-object v3, v2, v8

    .line 6
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/join/kotlin/module/hmcloud/pad/HMOpEventMapper;->directionMap:Ljava/util/Map;

    const/16 v2, 0xc

    new-array v3, v2, [Lkotlin/Pair;

    .line 7
    sget-object v9, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnX:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v9}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x4000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v3, v5

    .line 8
    sget-object v9, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnY:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v9}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v9

    const v10, 0x8000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v3, v4

    .line 9
    sget-object v9, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnA:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v9}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v3, v6

    .line 10
    sget-object v9, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnB:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v9}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v3, v8

    .line 11
    sget-object v9, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnLT:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v9}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpXinputLeftTrigger:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v3, v1

    .line 12
    sget-object v9, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnLB:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v9}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x100

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v3, v10

    .line 13
    sget-object v9, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnRT:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v9}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpXinputRightTrigger:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v9, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v11, 0x6

    aput-object v9, v3, v11

    .line 14
    sget-object v9, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnRB:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v9}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v9

    const/16 v12, 0x200

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v9, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v12, 0x7

    aput-object v9, v3, v12

    .line 15
    sget-object v9, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnLS:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v9}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v9

    const/16 v13, 0x40

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v9, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v3, v7

    .line 16
    sget-object v9, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnRS:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v9}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v9

    const/16 v14, 0x80

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v9, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0x9

    aput-object v9, v3, v14

    .line 17
    sget-object v9, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnSelect:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v9}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v9

    const/16 v15, 0x20

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v9, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v13, 0xa

    aput-object v9, v3, v13

    .line 18
    sget-object v9, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnStart:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v9}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x10

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v9, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0xb

    aput-object v9, v3, v15

    .line 19
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v0, Lcom/join/kotlin/module/hmcloud/pad/HMOpEventMapper;->gamepadMap:Ljava/util/Map;

    const/16 v3, 0x54

    new-array v3, v3, [Lkotlin/Pair;

    .line 20
    sget-object v9, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkEscape:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v9}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v9

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkEscape:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v3, v5

    .line 21
    sget-object v2, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF1:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF1:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v3, v4

    .line 22
    sget-object v2, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF2:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF2:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v3, v6

    .line 23
    sget-object v2, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF3:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF3:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v3, v8

    .line 24
    sget-object v2, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF4:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF4:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v3, v1

    .line 25
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF5:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF5:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v10

    .line 26
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF6:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF6:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v11

    .line 27
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF7:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF7:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v12

    .line 28
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF8:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF8:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v7

    .line 29
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF9:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF9:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v14

    .line 30
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF10:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF10:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v13

    .line 31
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF11:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF11:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v15

    .line 32
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF12:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF12:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v3, v2

    .line 33
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkInsert:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkInsert:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v3, v2

    .line 34
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkDelete:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkDelete:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v3, v2

    .line 35
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkPageUp:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkPrior:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v3, v2

    .line 36
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkPageDown:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkNext:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v16

    .line 37
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkHome:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkHome:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v3, v2

    .line 38
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkEnd:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkEnd:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v3, v2

    .line 39
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkBackquote:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkOem3:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v3, v2

    .line 40
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Key1:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKey1:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v3, v2

    .line 41
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Key2:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKey2:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v3, v2

    .line 42
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Key3:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKey3:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v3, v2

    .line 43
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Key4:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKey4:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v3, v2

    .line 44
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Key5:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKey5:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v3, v2

    .line 45
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Key6:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKey6:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v3, v2

    .line 46
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Key7:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKey7:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v3, v2

    .line 47
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Key8:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKey8:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v3, v2

    .line 48
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Key9:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKey9:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v3, v2

    .line 49
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Key0:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKey0:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v3, v2

    .line 50
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkMinus:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkSubtract:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v3, v2

    .line 51
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkEquals:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkOemPlus:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v3, v2

    .line 52
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkBackspace:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkBack:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v3, v2

    .line 53
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkTab:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkTab:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v3, v2

    .line 54
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyQ:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyQ:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v3, v2

    .line 55
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyW:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyW:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v3, v2

    .line 56
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyE:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyE:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v3, v2

    .line 57
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyR:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyR:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v3, v2

    .line 58
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyT:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyT:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v3, v2

    .line 59
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyY:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyY:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v3, v2

    .line 60
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyU:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyU:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v3, v2

    .line 61
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyI:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyI:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v3, v2

    .line 62
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyO:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyO:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v3, v2

    .line 63
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyP:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyP:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v3, v2

    .line 64
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkBracketLeft:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkOem4:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v3, v2

    .line 65
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkBracketRight:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkOem6:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v3, v2

    .line 66
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkBackslash:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkOem5:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v3, v2

    .line 67
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkCapsLock:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkCapital:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v3, v2

    .line 68
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyA:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyA:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v3, v2

    .line 69
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyS:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyS:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v3, v2

    .line 70
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyD:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyD:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v3, v2

    .line 71
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyF:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyF:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v3, v2

    .line 72
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyG:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyG:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v3, v2

    .line 73
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyH:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyH:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v3, v2

    .line 74
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyJ:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyJ:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, v3, v2

    .line 75
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyK:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyK:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, v3, v2

    .line 76
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyL:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyL:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, v3, v2

    .line 77
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkSemicolon:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkOem1:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x39

    aput-object v1, v3, v2

    .line 78
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkQuote:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkOem7:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x3a

    aput-object v1, v3, v2

    .line 79
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkEnter:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkReturn:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x3b

    aput-object v1, v3, v2

    .line 80
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkShift:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkShift:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x3c

    aput-object v1, v3, v2

    .line 81
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyZ:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyZ:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x3d

    aput-object v1, v3, v2

    .line 82
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyX:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyX:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x3e

    aput-object v1, v3, v2

    .line 83
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyC:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyC:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x3f

    aput-object v1, v3, v2

    .line 84
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyV:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyV:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x40

    aput-object v1, v3, v2

    .line 85
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyB:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyB:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x41

    aput-object v1, v3, v2

    .line 86
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyN:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyN:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x42

    aput-object v1, v3, v2

    .line 87
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyM:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyM:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x43

    aput-object v1, v3, v2

    .line 88
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkComma:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkOemComma:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x44

    aput-object v1, v3, v2

    .line 89
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkPeriod:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkOemPeriod:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x45

    aput-object v1, v3, v2

    .line 90
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkSlash:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkOem2:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x46

    aput-object v1, v3, v2

    .line 91
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkCtrl:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkControl:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x47

    aput-object v1, v3, v2

    .line 92
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkAlt:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkMenu:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x48

    aput-object v1, v3, v2

    .line 93
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkWinLeft:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkLwin:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x49

    aput-object v1, v3, v2

    .line 94
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkWinRight:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkRwin:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x4a

    aput-object v1, v3, v2

    .line 95
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkSpace:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkSpace:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x4b

    aput-object v1, v3, v2

    .line 96
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkUp:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkUp:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x4c

    aput-object v1, v3, v2

    .line 97
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkDown:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkDown:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x4d

    aput-object v1, v3, v2

    .line 98
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkLeft:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkLeft:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x4e

    aput-object v1, v3, v2

    .line 99
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkRight:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkRight:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x4f

    aput-object v1, v3, v2

    .line 100
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseLeft:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpMouseButtonLeft:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x50

    aput-object v1, v3, v2

    .line 101
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseRight:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpMouseButtonRight:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x51

    aput-object v1, v3, v2

    .line 102
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseMiddle:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpMouseButtonMiddle:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x52

    aput-object v1, v3, v2

    .line 103
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseWheel:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpMouseWheel:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x53

    aput-object v1, v3, v2

    .line 104
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/pad/HMOpEventMapper;->keyboardMap:Ljava/util/Map;

    .line 105
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/pad/HMOpEventMapper;->opEventPool:Ljava/util/Map;

    .line 106
    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 107
    invoke-static {v4, v13, v1}, Lkotlinx/coroutines/flow/o;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/i;

    move-result-object v1

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/pad/HMOpEventMapper;->opInputData:Lkotlinx/coroutines/flow/i;

    .line 108
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/pad/HMOpEventMapper;->gamepadEventPool:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getOpInputData()Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/haima/hmcp/beans/HMInputOpData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpEventMapper;->opInputData:Lkotlinx/coroutines/flow/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCombineKey(Ljava/util/List;Z)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string p2, "keys"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDpad(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "directions"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyItem(Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/hmcloud/HMKeyItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onKeyPress(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "name"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTrackball(Ljava/lang/String;FF)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "name"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
