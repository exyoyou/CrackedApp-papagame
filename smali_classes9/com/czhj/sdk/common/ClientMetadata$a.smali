.class public final enum Lcom/czhj/sdk/common/ClientMetadata$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/sdk/common/ClientMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/czhj/sdk/common/ClientMetadata$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/czhj/sdk/common/ClientMetadata$a;

.field public static final enum DEVICE_ORIENTATION:Lcom/czhj/sdk/common/ClientMetadata$a;

.field public static final enum FORCE_LANDSCAPE:Lcom/czhj/sdk/common/ClientMetadata$a;

.field public static final enum FORCE_PORTRAIT:Lcom/czhj/sdk/common/ClientMetadata$a;

.field public static final enum UNDEFINED:Lcom/czhj/sdk/common/ClientMetadata$a;


# instance fields
.field private final mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/czhj/sdk/common/ClientMetadata$a;

    const-string v1, "portrait"

    const-string v2, "FORCE_PORTRAIT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/czhj/sdk/common/ClientMetadata$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/czhj/sdk/common/ClientMetadata$a;->FORCE_PORTRAIT:Lcom/czhj/sdk/common/ClientMetadata$a;

    new-instance v1, Lcom/czhj/sdk/common/ClientMetadata$a;

    const-string v2, "landscape"

    const-string v4, "FORCE_LANDSCAPE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/czhj/sdk/common/ClientMetadata$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/czhj/sdk/common/ClientMetadata$a;->FORCE_LANDSCAPE:Lcom/czhj/sdk/common/ClientMetadata$a;

    new-instance v2, Lcom/czhj/sdk/common/ClientMetadata$a;

    const-string v4, "device"

    const-string v6, "DEVICE_ORIENTATION"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/czhj/sdk/common/ClientMetadata$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/czhj/sdk/common/ClientMetadata$a;->DEVICE_ORIENTATION:Lcom/czhj/sdk/common/ClientMetadata$a;

    new-instance v4, Lcom/czhj/sdk/common/ClientMetadata$a;

    const-string v6, ""

    const-string v8, "UNDEFINED"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/czhj/sdk/common/ClientMetadata$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/czhj/sdk/common/ClientMetadata$a;->UNDEFINED:Lcom/czhj/sdk/common/ClientMetadata$a;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/czhj/sdk/common/ClientMetadata$a;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lcom/czhj/sdk/common/ClientMetadata$a;->$VALUES:[Lcom/czhj/sdk/common/ClientMetadata$a;

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

    iput-object p3, p0, Lcom/czhj/sdk/common/ClientMetadata$a;->mKey:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/czhj/sdk/common/ClientMetadata$a;
    .locals 1

    const-class v0, Lcom/czhj/sdk/common/ClientMetadata$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/czhj/sdk/common/ClientMetadata$a;

    return-object p0
.end method

.method public static values()[Lcom/czhj/sdk/common/ClientMetadata$a;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/ClientMetadata$a;->$VALUES:[Lcom/czhj/sdk/common/ClientMetadata$a;

    invoke-virtual {v0}, [Lcom/czhj/sdk/common/ClientMetadata$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/czhj/sdk/common/ClientMetadata$a;

    return-object v0
.end method
