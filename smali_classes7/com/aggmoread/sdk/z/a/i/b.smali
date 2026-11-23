.class public final enum Lcom/aggmoread/sdk/z/a/i/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aggmoread/sdk/z/a/i/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/aggmoread/sdk/z/a/i/b;

.field public static final enum c:Lcom/aggmoread/sdk/z/a/i/b;

.field public static final enum d:Lcom/aggmoread/sdk/z/a/i/b;

.field public static final enum e:Lcom/aggmoread/sdk/z/a/i/b;

.field public static final enum f:Lcom/aggmoread/sdk/z/a/i/b;

.field private static final synthetic g:[Lcom/aggmoread/sdk/z/a/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/aggmoread/sdk/z/a/i/b;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aggmoread/sdk/z/a/i/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aggmoread/sdk/z/a/i/b;->b:Lcom/aggmoread/sdk/z/a/i/b;

    new-instance v1, Lcom/aggmoread/sdk/z/a/i/b;

    const-string v3, "TOAST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/aggmoread/sdk/z/a/i/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/aggmoread/sdk/z/a/i/b;->c:Lcom/aggmoread/sdk/z/a/i/b;

    new-instance v3, Lcom/aggmoread/sdk/z/a/i/b;

    const-string v5, "SHAKE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/aggmoread/sdk/z/a/i/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/aggmoread/sdk/z/a/i/b;->d:Lcom/aggmoread/sdk/z/a/i/b;

    new-instance v5, Lcom/aggmoread/sdk/z/a/i/b;

    const-string v7, "FULL_SCREEN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/aggmoread/sdk/z/a/i/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/aggmoread/sdk/z/a/i/b;->e:Lcom/aggmoread/sdk/z/a/i/b;

    new-instance v7, Lcom/aggmoread/sdk/z/a/i/b;

    const-string v9, "MIXED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/aggmoread/sdk/z/a/i/b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/aggmoread/sdk/z/a/i/b;->f:Lcom/aggmoread/sdk/z/a/i/b;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/aggmoread/sdk/z/a/i/b;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/aggmoread/sdk/z/a/i/b;->g:[Lcom/aggmoread/sdk/z/a/i/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/aggmoread/sdk/z/a/i/b;
    .locals 1

    sget-object v0, Lcom/aggmoread/sdk/z/a/i/b;->g:[Lcom/aggmoread/sdk/z/a/i/b;

    invoke-virtual {v0}, [Lcom/aggmoread/sdk/z/a/i/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aggmoread/sdk/z/a/i/b;

    return-object v0
.end method
