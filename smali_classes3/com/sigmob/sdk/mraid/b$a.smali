.class public final enum Lcom/sigmob/sdk/mraid/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/mraid/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/mraid/b$a;

.field public static final enum b:Lcom/sigmob/sdk/mraid/b$a;

.field public static final enum c:Lcom/sigmob/sdk/mraid/b$a;

.field public static final enum d:Lcom/sigmob/sdk/mraid/b$a;

.field public static final enum e:Lcom/sigmob/sdk/mraid/b$a;

.field public static final enum f:Lcom/sigmob/sdk/mraid/b$a;

.field public static final enum g:Lcom/sigmob/sdk/mraid/b$a;

.field private static final synthetic i:[Lcom/sigmob/sdk/mraid/b$a;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/sigmob/sdk/mraid/b$a;

    const/16 v1, 0x33

    const-string v2, "TOP_LEFT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sigmob/sdk/mraid/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/mraid/b$a;->a:Lcom/sigmob/sdk/mraid/b$a;

    new-instance v1, Lcom/sigmob/sdk/mraid/b$a;

    const/16 v2, 0x31

    const-string v4, "TOP_CENTER"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/sigmob/sdk/mraid/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sigmob/sdk/mraid/b$a;->b:Lcom/sigmob/sdk/mraid/b$a;

    new-instance v2, Lcom/sigmob/sdk/mraid/b$a;

    const/16 v4, 0x35

    const-string v6, "TOP_RIGHT"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/sigmob/sdk/mraid/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sigmob/sdk/mraid/b$a;->c:Lcom/sigmob/sdk/mraid/b$a;

    new-instance v4, Lcom/sigmob/sdk/mraid/b$a;

    const/16 v6, 0x11

    const-string v8, "CENTER"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/sigmob/sdk/mraid/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sigmob/sdk/mraid/b$a;->d:Lcom/sigmob/sdk/mraid/b$a;

    new-instance v6, Lcom/sigmob/sdk/mraid/b$a;

    const/16 v8, 0x53

    const-string v10, "BOTTOM_LEFT"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/sigmob/sdk/mraid/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sigmob/sdk/mraid/b$a;->e:Lcom/sigmob/sdk/mraid/b$a;

    new-instance v8, Lcom/sigmob/sdk/mraid/b$a;

    const/16 v10, 0x51

    const-string v12, "BOTTOM_CENTER"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/sigmob/sdk/mraid/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/sigmob/sdk/mraid/b$a;->f:Lcom/sigmob/sdk/mraid/b$a;

    new-instance v10, Lcom/sigmob/sdk/mraid/b$a;

    const/16 v12, 0x55

    const-string v14, "BOTTOM_RIGHT"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/sigmob/sdk/mraid/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/sigmob/sdk/mraid/b$a;->g:Lcom/sigmob/sdk/mraid/b$a;

    const/4 v12, 0x7

    new-array v12, v12, [Lcom/sigmob/sdk/mraid/b$a;

    aput-object v0, v12, v3

    aput-object v1, v12, v5

    aput-object v2, v12, v7

    aput-object v4, v12, v9

    aput-object v6, v12, v11

    aput-object v8, v12, v13

    aput-object v10, v12, v15

    sput-object v12, Lcom/sigmob/sdk/mraid/b$a;->i:[Lcom/sigmob/sdk/mraid/b$a;

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
            "mGravity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sigmob/sdk/mraid/b$a;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/mraid/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/sigmob/sdk/mraid/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/mraid/b$a;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/mraid/b$a;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/mraid/b$a;->i:[Lcom/sigmob/sdk/mraid/b$a;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/mraid/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/mraid/b$a;

    return-object v0
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/mraid/b$a;->h:I

    return v0
.end method
