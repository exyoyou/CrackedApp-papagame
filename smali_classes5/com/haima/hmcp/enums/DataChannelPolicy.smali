.class public final enum Lcom/haima/hmcp/enums/DataChannelPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/haima/hmcp/enums/DataChannelPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/haima/hmcp/enums/DataChannelPolicy;

.field public static final enum BACKUP:Lcom/haima/hmcp/enums/DataChannelPolicy;

.field public static final enum START:Lcom/haima/hmcp/enums/DataChannelPolicy;

.field public static final enum UNKNOWN:Lcom/haima/hmcp/enums/DataChannelPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/haima/hmcp/enums/DataChannelPolicy;

    .line 2
    .line 3
    const-string v1, "UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/haima/hmcp/enums/DataChannelPolicy;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/haima/hmcp/enums/DataChannelPolicy;->UNKNOWN:Lcom/haima/hmcp/enums/DataChannelPolicy;

    .line 10
    .line 11
    new-instance v1, Lcom/haima/hmcp/enums/DataChannelPolicy;

    .line 12
    .line 13
    const-string v3, "START"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/haima/hmcp/enums/DataChannelPolicy;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/haima/hmcp/enums/DataChannelPolicy;->START:Lcom/haima/hmcp/enums/DataChannelPolicy;

    .line 20
    .line 21
    new-instance v3, Lcom/haima/hmcp/enums/DataChannelPolicy;

    .line 22
    .line 23
    const-string v5, "BACKUP"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/haima/hmcp/enums/DataChannelPolicy;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/haima/hmcp/enums/DataChannelPolicy;->BACKUP:Lcom/haima/hmcp/enums/DataChannelPolicy;

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [Lcom/haima/hmcp/enums/DataChannelPolicy;

    .line 33
    .line 34
    aput-object v0, v5, v2

    .line 35
    .line 36
    aput-object v1, v5, v4

    .line 37
    .line 38
    aput-object v3, v5, v6

    .line 39
    .line 40
    sput-object v5, Lcom/haima/hmcp/enums/DataChannelPolicy;->$VALUES:[Lcom/haima/hmcp/enums/DataChannelPolicy;

    .line 41
    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static parsePolicy(Ljava/lang/String;)Lcom/haima/hmcp/enums/DataChannelPolicy;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "START"

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object p0, Lcom/haima/hmcp/enums/DataChannelPolicy;->START:Lcom/haima/hmcp/enums/DataChannelPolicy;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    const-string v0, "BACKUP"

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    sget-object p0, Lcom/haima/hmcp/enums/DataChannelPolicy;->BACKUP:Lcom/haima/hmcp/enums/DataChannelPolicy;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    sget-object p0, Lcom/haima/hmcp/enums/DataChannelPolicy;->UNKNOWN:Lcom/haima/hmcp/enums/DataChannelPolicy;

    .line 38
    .line 39
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/haima/hmcp/enums/DataChannelPolicy;
    .locals 1

    .line 1
    const-class v0, Lcom/haima/hmcp/enums/DataChannelPolicy;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/haima/hmcp/enums/DataChannelPolicy;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/haima/hmcp/enums/DataChannelPolicy;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/enums/DataChannelPolicy;->$VALUES:[Lcom/haima/hmcp/enums/DataChannelPolicy;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/haima/hmcp/enums/DataChannelPolicy;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/haima/hmcp/enums/DataChannelPolicy;

    .line 8
    .line 9
    return-object v0
.end method
