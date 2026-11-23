.class public final enum Lcom/sigmob/sdk/base/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/base/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/base/c;

.field public static final enum b:Lcom/sigmob/sdk/base/c;

.field public static final enum c:Lcom/sigmob/sdk/base/c;

.field public static final enum d:Lcom/sigmob/sdk/base/c;

.field public static final enum e:Lcom/sigmob/sdk/base/c;

.field public static final enum f:Lcom/sigmob/sdk/base/c;

.field private static final synthetic h:[Lcom/sigmob/sdk/base/c;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/sigmob/sdk/base/c;

    const-string v1, "ImageTypeUnknow"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sigmob/sdk/base/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/base/c;->a:Lcom/sigmob/sdk/base/c;

    new-instance v1, Lcom/sigmob/sdk/base/c;

    const-string v3, "ImageTypeJPEG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sigmob/sdk/base/c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sigmob/sdk/base/c;->b:Lcom/sigmob/sdk/base/c;

    new-instance v3, Lcom/sigmob/sdk/base/c;

    const-string v5, "ImageTypePNG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sigmob/sdk/base/c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sigmob/sdk/base/c;->c:Lcom/sigmob/sdk/base/c;

    new-instance v5, Lcom/sigmob/sdk/base/c;

    const-string v7, "ImageTypeGIF"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/sigmob/sdk/base/c;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sigmob/sdk/base/c;->d:Lcom/sigmob/sdk/base/c;

    new-instance v7, Lcom/sigmob/sdk/base/c;

    const-string v9, "SMImageTypeWEBP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/sigmob/sdk/base/c;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sigmob/sdk/base/c;->e:Lcom/sigmob/sdk/base/c;

    new-instance v9, Lcom/sigmob/sdk/base/c;

    const-string v11, "ImageTypeMP4"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/sigmob/sdk/base/c;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sigmob/sdk/base/c;->f:Lcom/sigmob/sdk/base/c;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/sigmob/sdk/base/c;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/sigmob/sdk/base/c;->h:[Lcom/sigmob/sdk/base/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sigmob/sdk/base/c;->g:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/sigmob/sdk/base/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/base/c;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/base/c;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/base/c;->h:[Lcom/sigmob/sdk/base/c;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/base/c;->g:I

    return v0
.end method
