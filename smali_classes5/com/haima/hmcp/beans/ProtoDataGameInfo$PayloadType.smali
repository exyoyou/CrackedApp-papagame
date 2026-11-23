.class public final enum Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/beans/ProtoDataGameInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PayloadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;

.field public static final enum TV_MIGU_COMPETITIVE_GAME:Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;


# instance fields
.field private payloadType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;

    .line 2
    .line 3
    const/16 v1, 0x2a1

    .line 4
    .line 5
    const-string v2, "TV_MIGU_COMPETITIVE_GAME"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;->TV_MIGU_COMPETITIVE_GAME:Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v1, v1, [Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;

    .line 15
    .line 16
    aput-object v0, v1, v3

    .line 17
    .line 18
    sput-object v1, Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;->$VALUES:[Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;

    .line 19
    .line 20
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;->payloadType:I

    .line 5
    .line 6
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;->payloadType:I

    .line 2
    .line 3
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;
    .locals 1

    .line 1
    const-class v0, Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;->$VALUES:[Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;

    .line 8
    .line 9
    return-object v0
.end method
