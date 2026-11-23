.class public final enum Lcom/sigmob/sdk/mraid/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/mraid/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/mraid/p;

.field public static final enum b:Lcom/sigmob/sdk/mraid/p;

.field public static final enum c:Lcom/sigmob/sdk/mraid/p;

.field private static final synthetic e:[Lcom/sigmob/sdk/mraid/p;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/sigmob/sdk/mraid/p;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/mraid/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/mraid/p;->a:Lcom/sigmob/sdk/mraid/p;

    new-instance v1, Lcom/sigmob/sdk/mraid/p;

    const-string v4, "LANDSCAPE"

    invoke-direct {v1, v4, v3, v2}, Lcom/sigmob/sdk/mraid/p;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sigmob/sdk/mraid/p;->b:Lcom/sigmob/sdk/mraid/p;

    new-instance v4, Lcom/sigmob/sdk/mraid/p;

    const/4 v5, -0x1

    const-string v6, "NONE"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v5}, Lcom/sigmob/sdk/mraid/p;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sigmob/sdk/mraid/p;->c:Lcom/sigmob/sdk/mraid/p;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sigmob/sdk/mraid/p;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v7

    sput-object v5, Lcom/sigmob/sdk/mraid/p;->e:[Lcom/sigmob/sdk/mraid/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "activityInfoOrientation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sigmob/sdk/mraid/p;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/mraid/p;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/sigmob/sdk/mraid/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/mraid/p;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/mraid/p;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/mraid/p;->e:[Lcom/sigmob/sdk/mraid/p;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/mraid/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/mraid/p;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/mraid/p;->d:I

    return v0
.end method
