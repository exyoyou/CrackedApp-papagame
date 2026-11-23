.class public final Lcom/byazt/cr/n;
.super Lcom/byazt/cr/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x560,
        0x2e
    }
.end annotation


# static fields
.field public static final a:Lcom/byazt/cr/n;

.field public static final i:Lcom/byazt/cr/n;

.field public static final n:Lcom/byazt/cr/n;

.field public static final sp:Lcom/byazt/cr/n;

.field public static final uj:Lcom/byazt/cr/n;

.field public static final ve:Lcom/byazt/cr/n;

.field public static final x:Lcom/byazt/cr/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/cr/n;

    .line 2
    .line 3
    const v1, 0x7271a8

    .line 4
    .line 5
    .line 6
    const-string v2, "\u6267\u884c\u6210\u529f"

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/byazt/cr/n;-><init>(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/byazt/cr/n;->ve:Lcom/byazt/cr/n;

    .line 12
    .line 13
    new-instance v0, Lcom/byazt/cr/n;

    .line 14
    .line 15
    const v1, 0x7271ac

    .line 16
    .line 17
    .line 18
    const-string v2, "deeplink\u94fe\u63a5\u4e3a\u7a7a\uff0c\u6253\u5f00\u5931\u8d25"

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Lcom/byazt/cr/n;-><init>(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/byazt/cr/n;->uj:Lcom/byazt/cr/n;

    .line 24
    .line 25
    new-instance v0, Lcom/byazt/cr/n;

    .line 26
    .line 27
    const v1, 0x7271ad

    .line 28
    .line 29
    .line 30
    const-string v2, "deeplink \u88ab\u62d2\u7edd"

    .line 31
    .line 32
    invoke-direct {v0, v1, v2}, Lcom/byazt/cr/n;-><init>(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/byazt/cr/n;->n:Lcom/byazt/cr/n;

    .line 36
    .line 37
    new-instance v0, Lcom/byazt/cr/n;

    .line 38
    .line 39
    const v1, 0x7271ae

    .line 40
    .line 41
    .line 42
    const-string v2, "deeplink \u6253\u5f00\u5931\u8d25"

    .line 43
    .line 44
    invoke-direct {v0, v1, v2}, Lcom/byazt/cr/n;-><init>(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/byazt/cr/n;->a:Lcom/byazt/cr/n;

    .line 48
    .line 49
    new-instance v0, Lcom/byazt/cr/n;

    .line 50
    .line 51
    const v1, 0x7271af

    .line 52
    .line 53
    .line 54
    const-string v2, "\u672a\u77e5\u6253\u5f00\u65b9\u5f0f"

    .line 55
    .line 56
    invoke-direct {v0, v1, v2}, Lcom/byazt/cr/n;-><init>(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/byazt/cr/n;->sp:Lcom/byazt/cr/n;

    .line 60
    .line 61
    new-instance v0, Lcom/byazt/cr/n;

    .line 62
    .line 63
    const v1, 0x7271b0

    .line 64
    .line 65
    .line 66
    const-string v2, "quick_url\u4e3a\u7a7a\uff0c\u6253\u5f00\u5931\u8d25"

    .line 67
    .line 68
    invoke-direct {v0, v1, v2}, Lcom/byazt/cr/n;-><init>(ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/byazt/cr/n;->x:Lcom/byazt/cr/n;

    .line 72
    .line 73
    new-instance v0, Lcom/byazt/cr/n;

    .line 74
    .line 75
    const v1, 0x7271b1

    .line 76
    .line 77
    .line 78
    const-string v2, "\u5feb\u5e94\u7528\u6253\u5f00\u5931\u8d25"

    .line 79
    .line 80
    invoke-direct {v0, v1, v2}, Lcom/byazt/cr/n;-><init>(ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/byazt/cr/n;->i:Lcom/byazt/cr/n;

    .line 84
    .line 85
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/cr/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/byazt/cr/c;->c:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/cr/c;->tt:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
