.class public enum Lcom/sigmob/sdk/mraid/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/mraid/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/mraid/k;

.field public static final enum b:Lcom/sigmob/sdk/mraid/k;

.field public static final enum c:Lcom/sigmob/sdk/mraid/k;

.field public static final enum d:Lcom/sigmob/sdk/mraid/k;

.field public static final enum e:Lcom/sigmob/sdk/mraid/k;

.field public static final enum f:Lcom/sigmob/sdk/mraid/k;

.field public static final enum g:Lcom/sigmob/sdk/mraid/k;

.field public static final enum h:Lcom/sigmob/sdk/mraid/k;

.field public static final enum i:Lcom/sigmob/sdk/mraid/k;

.field public static final enum j:Lcom/sigmob/sdk/mraid/k;

.field public static final enum k:Lcom/sigmob/sdk/mraid/k;

.field public static final enum l:Lcom/sigmob/sdk/mraid/k;

.field public static final enum m:Lcom/sigmob/sdk/mraid/k;

.field public static final enum n:Lcom/sigmob/sdk/mraid/k;

.field public static final enum o:Lcom/sigmob/sdk/mraid/k;

.field private static final synthetic q:[Lcom/sigmob/sdk/mraid/k;


# instance fields
.field private final p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/sigmob/sdk/mraid/k;

    const-string v1, "close"

    const-string v2, "CLOSE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sigmob/sdk/mraid/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/mraid/k;->a:Lcom/sigmob/sdk/mraid/k;

    new-instance v1, Lcom/sigmob/sdk/mraid/k$1;

    const-string v2, "expand"

    const-string v4, "EXPAND"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/sigmob/sdk/mraid/k$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sigmob/sdk/mraid/k;->b:Lcom/sigmob/sdk/mraid/k;

    new-instance v2, Lcom/sigmob/sdk/mraid/k;

    const-string v4, "usecustomclose"

    const-string v6, "USE_CUSTOM_CLOSE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/sigmob/sdk/mraid/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sigmob/sdk/mraid/k;->c:Lcom/sigmob/sdk/mraid/k;

    new-instance v4, Lcom/sigmob/sdk/mraid/k$2;

    const-string v6, "open"

    const-string v8, "OPEN"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/sigmob/sdk/mraid/k$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sigmob/sdk/mraid/k;->d:Lcom/sigmob/sdk/mraid/k;

    new-instance v6, Lcom/sigmob/sdk/mraid/k$3;

    const-string v8, "feedback"

    const-string v10, "feedBack"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/sigmob/sdk/mraid/k$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/sigmob/sdk/mraid/k;->e:Lcom/sigmob/sdk/mraid/k;

    new-instance v8, Lcom/sigmob/sdk/mraid/k;

    const-string v10, "unload"

    const-string v12, "UNLOAD"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/sigmob/sdk/mraid/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/sigmob/sdk/mraid/k;->f:Lcom/sigmob/sdk/mraid/k;

    new-instance v10, Lcom/sigmob/sdk/mraid/k;

    const-string v12, "openFourElements"

    const-string v14, "OPENFOURELEMENTS"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/sigmob/sdk/mraid/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/sigmob/sdk/mraid/k;->g:Lcom/sigmob/sdk/mraid/k;

    new-instance v12, Lcom/sigmob/sdk/mraid/k$4;

    const-string v14, "resize"

    const-string v15, "RESIZE"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/sigmob/sdk/mraid/k$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/sigmob/sdk/mraid/k;->h:Lcom/sigmob/sdk/mraid/k;

    new-instance v14, Lcom/sigmob/sdk/mraid/k;

    const-string v15, "setOrientationProperties"

    const-string v13, "SET_ORIENTATION_PROPERTIES"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/sigmob/sdk/mraid/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/sigmob/sdk/mraid/k;->i:Lcom/sigmob/sdk/mraid/k;

    new-instance v13, Lcom/sigmob/sdk/mraid/k$5;

    const-string v15, "playVideo"

    const-string v11, "PLAY_VIDEO"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcom/sigmob/sdk/mraid/k$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/sigmob/sdk/mraid/k;->j:Lcom/sigmob/sdk/mraid/k;

    new-instance v11, Lcom/sigmob/sdk/mraid/k$6;

    const-string v15, "storePicture"

    const-string v9, "STORE_PICTURE"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcom/sigmob/sdk/mraid/k$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/sigmob/sdk/mraid/k;->k:Lcom/sigmob/sdk/mraid/k;

    new-instance v9, Lcom/sigmob/sdk/mraid/k$7;

    const-string v15, "createCalendarEvent"

    const-string v7, "CREATE_CALENDAR_EVENT"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcom/sigmob/sdk/mraid/k$7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/sigmob/sdk/mraid/k;->l:Lcom/sigmob/sdk/mraid/k;

    new-instance v7, Lcom/sigmob/sdk/mraid/k$8;

    const-string v15, "vpaid"

    const-string v5, "VPAID"

    const/16 v3, 0xc

    invoke-direct {v7, v5, v3, v15}, Lcom/sigmob/sdk/mraid/k$8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/sigmob/sdk/mraid/k;->m:Lcom/sigmob/sdk/mraid/k;

    new-instance v5, Lcom/sigmob/sdk/mraid/k$9;

    const-string v15, "extension"

    const-string v3, "EXTENSION"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v3, v7, v15}, Lcom/sigmob/sdk/mraid/k$9;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sigmob/sdk/mraid/k;->n:Lcom/sigmob/sdk/mraid/k;

    new-instance v3, Lcom/sigmob/sdk/mraid/k;

    const-string v15, ""

    const-string v7, "UNSPECIFIED"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v3, v7, v5, v15}, Lcom/sigmob/sdk/mraid/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sigmob/sdk/mraid/k;->o:Lcom/sigmob/sdk/mraid/k;

    const/16 v7, 0xf

    new-array v7, v7, [Lcom/sigmob/sdk/mraid/k;

    const/4 v15, 0x0

    aput-object v0, v7, v15

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v4, v7, v0

    const/4 v0, 0x4

    aput-object v6, v7, v0

    const/4 v0, 0x5

    aput-object v8, v7, v0

    const/4 v0, 0x6

    aput-object v10, v7, v0

    const/4 v0, 0x7

    aput-object v12, v7, v0

    const/16 v0, 0x8

    aput-object v14, v7, v0

    const/16 v0, 0x9

    aput-object v13, v7, v0

    const/16 v0, 0xa

    aput-object v11, v7, v0

    const/16 v0, 0xb

    aput-object v9, v7, v0

    const/16 v0, 0xc

    aput-object v16, v7, v0

    const/16 v0, 0xd

    aput-object v17, v7, v0

    aput-object v3, v7, v5

    sput-object v7, Lcom/sigmob/sdk/mraid/k;->q:[Lcom/sigmob/sdk/mraid/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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
            "javascriptString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sigmob/sdk/mraid/k;->p:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/mraid/k$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/mraid/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/sigmob/sdk/mraid/k;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/sigmob/sdk/mraid/k;->values()[Lcom/sigmob/sdk/mraid/k;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/sigmob/sdk/mraid/k;->p:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sigmob/sdk/mraid/k;->o:Lcom/sigmob/sdk/mraid/k;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/mraid/k;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/sigmob/sdk/mraid/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/mraid/k;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/mraid/k;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/mraid/k;->q:[Lcom/sigmob/sdk/mraid/k;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/mraid/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/mraid/k;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/k;->p:Ljava/lang/String;

    return-object v0
.end method

.method a(Lcom/sigmob/sdk/base/models/PlacementType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementType"
        }
    .end annotation

    .line 3
    const/4 p1, 0x0

    return p1
.end method
