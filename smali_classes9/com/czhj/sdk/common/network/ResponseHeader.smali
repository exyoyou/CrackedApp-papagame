.class public final enum Lcom/czhj/sdk/common/network/ResponseHeader;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/czhj/sdk/common/network/ResponseHeader;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/czhj/sdk/common/network/ResponseHeader;

.field public static final enum ACCEPT_LANGUAGE:Lcom/czhj/sdk/common/network/ResponseHeader;

.field public static final enum LOCATION:Lcom/czhj/sdk/common/network/ResponseHeader;

.field public static final enum USER_AGENT:Lcom/czhj/sdk/common/network/ResponseHeader;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/czhj/sdk/common/network/ResponseHeader;

    const-string v1, "Location"

    const-string v2, "LOCATION"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/czhj/sdk/common/network/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/czhj/sdk/common/network/ResponseHeader;->LOCATION:Lcom/czhj/sdk/common/network/ResponseHeader;

    new-instance v1, Lcom/czhj/sdk/common/network/ResponseHeader;

    const-string v2, "User-Agent"

    const-string v4, "USER_AGENT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/czhj/sdk/common/network/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/czhj/sdk/common/network/ResponseHeader;->USER_AGENT:Lcom/czhj/sdk/common/network/ResponseHeader;

    new-instance v2, Lcom/czhj/sdk/common/network/ResponseHeader;

    const-string v4, "Accept-Language"

    const-string v6, "ACCEPT_LANGUAGE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/czhj/sdk/common/network/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/czhj/sdk/common/network/ResponseHeader;->ACCEPT_LANGUAGE:Lcom/czhj/sdk/common/network/ResponseHeader;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/czhj/sdk/common/network/ResponseHeader;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lcom/czhj/sdk/common/network/ResponseHeader;->$VALUES:[Lcom/czhj/sdk/common/network/ResponseHeader;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/czhj/sdk/common/network/ResponseHeader;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/czhj/sdk/common/network/ResponseHeader;
    .locals 1

    const-class v0, Lcom/czhj/sdk/common/network/ResponseHeader;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/czhj/sdk/common/network/ResponseHeader;

    return-object p0
.end method

.method public static values()[Lcom/czhj/sdk/common/network/ResponseHeader;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/network/ResponseHeader;->$VALUES:[Lcom/czhj/sdk/common/network/ResponseHeader;

    invoke-virtual {v0}, [Lcom/czhj/sdk/common/network/ResponseHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/czhj/sdk/common/network/ResponseHeader;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/network/ResponseHeader;->key:Ljava/lang/String;

    return-object v0
.end method
