.class public final enum Lcom/join/kotlin/base/net/Error;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/kotlin/base/net/Error;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\r\u001a\u00020\u0005J\u0006\u0010\u000e\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/join/kotlin/base/net/Error;",
        "",
        "code",
        "",
        "err",
        "",
        "<init>",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "UNKNOWN",
        "PARSE_ERROR",
        "NETWORK_ERROR",
        "SSL_ERROR",
        "TIMEOUT_ERROR",
        "getValue",
        "getKey",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/join/kotlin/base/net/Error;

.field public static final enum NETWORK_ERROR:Lcom/join/kotlin/base/net/Error;

.field public static final enum PARSE_ERROR:Lcom/join/kotlin/base/net/Error;

.field public static final enum SSL_ERROR:Lcom/join/kotlin/base/net/Error;

.field public static final enum TIMEOUT_ERROR:Lcom/join/kotlin/base/net/Error;

.field public static final enum UNKNOWN:Lcom/join/kotlin/base/net/Error;


# instance fields
.field private final code:I

.field private final err:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/join/kotlin/base/net/Error;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/join/kotlin/base/net/Error;

    const/4 v1, 0x0

    sget-object v2, Lcom/join/kotlin/base/net/Error;->UNKNOWN:Lcom/join/kotlin/base/net/Error;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/join/kotlin/base/net/Error;->PARSE_ERROR:Lcom/join/kotlin/base/net/Error;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/join/kotlin/base/net/Error;->NETWORK_ERROR:Lcom/join/kotlin/base/net/Error;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/join/kotlin/base/net/Error;->SSL_ERROR:Lcom/join/kotlin/base/net/Error;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/join/kotlin/base/net/Error;->TIMEOUT_ERROR:Lcom/join/kotlin/base/net/Error;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/join/kotlin/base/net/Error;

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    const-string v2, "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 6
    .line 7
    const-string v3, "UNKNOWN"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/join/kotlin/base/net/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/join/kotlin/base/net/Error;->UNKNOWN:Lcom/join/kotlin/base/net/Error;

    .line 14
    .line 15
    new-instance v0, Lcom/join/kotlin/base/net/Error;

    .line 16
    .line 17
    const/16 v1, 0x3e9

    .line 18
    .line 19
    const-string v2, "\u89e3\u6790\u9519\u8bef\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 20
    .line 21
    const-string v3, "PARSE_ERROR"

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/join/kotlin/base/net/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/join/kotlin/base/net/Error;->PARSE_ERROR:Lcom/join/kotlin/base/net/Error;

    .line 28
    .line 29
    new-instance v0, Lcom/join/kotlin/base/net/Error;

    .line 30
    .line 31
    const/16 v1, 0x3ea

    .line 32
    .line 33
    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u9519\u8bef\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    .line 34
    .line 35
    const-string v3, "NETWORK_ERROR"

    .line 36
    .line 37
    const/4 v4, 0x2

    .line 38
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/join/kotlin/base/net/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/join/kotlin/base/net/Error;->NETWORK_ERROR:Lcom/join/kotlin/base/net/Error;

    .line 42
    .line 43
    new-instance v0, Lcom/join/kotlin/base/net/Error;

    .line 44
    .line 45
    const/16 v1, 0x3ec

    .line 46
    .line 47
    const-string v2, "\u8bc1\u4e66\u51fa\u9519\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 48
    .line 49
    const-string v3, "SSL_ERROR"

    .line 50
    .line 51
    const/4 v4, 0x3

    .line 52
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/join/kotlin/base/net/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lcom/join/kotlin/base/net/Error;->SSL_ERROR:Lcom/join/kotlin/base/net/Error;

    .line 56
    .line 57
    new-instance v0, Lcom/join/kotlin/base/net/Error;

    .line 58
    .line 59
    const/16 v1, 0x3ee

    .line 60
    .line 61
    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    .line 62
    .line 63
    const-string v3, "TIMEOUT_ERROR"

    .line 64
    .line 65
    const/4 v4, 0x4

    .line 66
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/join/kotlin/base/net/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/join/kotlin/base/net/Error;->TIMEOUT_ERROR:Lcom/join/kotlin/base/net/Error;

    .line 70
    .line 71
    invoke-static {}, Lcom/join/kotlin/base/net/Error;->$values()[Lcom/join/kotlin/base/net/Error;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcom/join/kotlin/base/net/Error;->$VALUES:[Lcom/join/kotlin/base/net/Error;

    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lcom/join/kotlin/base/net/Error;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 82
    .line 83
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/join/kotlin/base/net/Error;->code:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/join/kotlin/base/net/Error;->err:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/join/kotlin/base/net/Error;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/join/kotlin/base/net/Error;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/kotlin/base/net/Error;
    .locals 1

    .line 1
    const-class v0, Lcom/join/kotlin/base/net/Error;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/join/kotlin/base/net/Error;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/join/kotlin/base/net/Error;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/kotlin/base/net/Error;->$VALUES:[Lcom/join/kotlin/base/net/Error;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/join/kotlin/base/net/Error;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getKey()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/base/net/Error;->code:I

    .line 2
    .line 3
    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/net/Error;->err:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
