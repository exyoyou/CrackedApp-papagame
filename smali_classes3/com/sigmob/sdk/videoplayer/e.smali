.class public final enum Lcom/sigmob/sdk/videoplayer/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/videoplayer/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/videoplayer/e;

.field public static final enum b:Lcom/sigmob/sdk/videoplayer/e;

.field public static final enum c:Lcom/sigmob/sdk/videoplayer/e;

.field public static final enum d:Lcom/sigmob/sdk/videoplayer/e;

.field public static final enum e:Lcom/sigmob/sdk/videoplayer/e;

.field public static final enum f:Lcom/sigmob/sdk/videoplayer/e;

.field private static final synthetic g:[Lcom/sigmob/sdk/videoplayer/e;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/sigmob/sdk/videoplayer/e;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/videoplayer/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/videoplayer/e;->a:Lcom/sigmob/sdk/videoplayer/e;

    new-instance v1, Lcom/sigmob/sdk/videoplayer/e;

    const-string v3, "RETRY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sigmob/sdk/videoplayer/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sigmob/sdk/videoplayer/e;->b:Lcom/sigmob/sdk/videoplayer/e;

    new-instance v3, Lcom/sigmob/sdk/videoplayer/e;

    const-string v5, "FULLSCREEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sigmob/sdk/videoplayer/e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sigmob/sdk/videoplayer/e;->c:Lcom/sigmob/sdk/videoplayer/e;

    new-instance v5, Lcom/sigmob/sdk/videoplayer/e;

    const-string v7, "VOLUME"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sigmob/sdk/videoplayer/e;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sigmob/sdk/videoplayer/e;->d:Lcom/sigmob/sdk/videoplayer/e;

    new-instance v7, Lcom/sigmob/sdk/videoplayer/e;

    const-string v9, "BIGRETRY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sigmob/sdk/videoplayer/e;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sigmob/sdk/videoplayer/e;->e:Lcom/sigmob/sdk/videoplayer/e;

    new-instance v9, Lcom/sigmob/sdk/videoplayer/e;

    const-string v11, "BACK"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sigmob/sdk/videoplayer/e;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sigmob/sdk/videoplayer/e;->f:Lcom/sigmob/sdk/videoplayer/e;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/sigmob/sdk/videoplayer/e;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/sigmob/sdk/videoplayer/e;->g:[Lcom/sigmob/sdk/videoplayer/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/videoplayer/e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/sigmob/sdk/videoplayer/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/videoplayer/e;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/videoplayer/e;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/videoplayer/e;->g:[Lcom/sigmob/sdk/videoplayer/e;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/videoplayer/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/videoplayer/e;

    return-object v0
.end method
