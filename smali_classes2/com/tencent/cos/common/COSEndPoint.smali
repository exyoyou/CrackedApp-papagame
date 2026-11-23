.class public final enum Lcom/tencent/cos/common/COSEndPoint;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/cos/common/COSEndPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/cos/common/COSEndPoint;

.field public static final enum COS_GZ:Lcom/tencent/cos/common/COSEndPoint;

.field public static final enum COS_SH:Lcom/tencent/cos/common/COSEndPoint;

.field public static final enum COS_TJ:Lcom/tencent/cos/common/COSEndPoint;


# instance fields
.field private code:Ljava/lang/String;

.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/tencent/cos/common/COSEndPoint;

    .line 2
    .line 3
    const-string v1, "cosgz"

    .line 4
    .line 5
    const-string v2, "\u534e\u5357"

    .line 6
    .line 7
    const-string v3, "COS_GZ"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/tencent/cos/common/COSEndPoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/tencent/cos/common/COSEndPoint;->COS_GZ:Lcom/tencent/cos/common/COSEndPoint;

    .line 14
    .line 15
    new-instance v1, Lcom/tencent/cos/common/COSEndPoint;

    .line 16
    .line 17
    const-string v2, "costj"

    .line 18
    .line 19
    const-string v3, "\u534e\u5317"

    .line 20
    .line 21
    const-string v5, "COS_TJ"

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    invoke-direct {v1, v5, v6, v2, v3}, Lcom/tencent/cos/common/COSEndPoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lcom/tencent/cos/common/COSEndPoint;->COS_TJ:Lcom/tencent/cos/common/COSEndPoint;

    .line 28
    .line 29
    new-instance v2, Lcom/tencent/cos/common/COSEndPoint;

    .line 30
    .line 31
    const-string v3, "cossh"

    .line 32
    .line 33
    const-string v5, "\u534e\u4e1c"

    .line 34
    .line 35
    const-string v7, "COS_SH"

    .line 36
    .line 37
    const/4 v8, 0x2

    .line 38
    invoke-direct {v2, v7, v8, v3, v5}, Lcom/tencent/cos/common/COSEndPoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sput-object v2, Lcom/tencent/cos/common/COSEndPoint;->COS_SH:Lcom/tencent/cos/common/COSEndPoint;

    .line 42
    .line 43
    const/4 v3, 0x3

    .line 44
    new-array v3, v3, [Lcom/tencent/cos/common/COSEndPoint;

    .line 45
    .line 46
    aput-object v0, v3, v4

    .line 47
    .line 48
    aput-object v1, v3, v6

    .line 49
    .line 50
    aput-object v2, v3, v8

    .line 51
    .line 52
    sput-object v3, Lcom/tencent/cos/common/COSEndPoint;->$VALUES:[Lcom/tencent/cos/common/COSEndPoint;

    .line 53
    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/tencent/cos/common/COSEndPoint;->code:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/tencent/cos/common/COSEndPoint;->desc:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/cos/common/COSEndPoint;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/cos/common/COSEndPoint;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/tencent/cos/common/COSEndPoint;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/tencent/cos/common/COSEndPoint;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/cos/common/COSEndPoint;->$VALUES:[Lcom/tencent/cos/common/COSEndPoint;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/tencent/cos/common/COSEndPoint;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/tencent/cos/common/COSEndPoint;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/common/COSEndPoint;->code:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/common/COSEndPoint;->desc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
