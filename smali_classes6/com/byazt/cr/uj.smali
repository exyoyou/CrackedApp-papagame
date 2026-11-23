.class public final Lcom/byazt/cr/uj;
.super Lcom/byazt/cr/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x560,
        0xf
    }
.end annotation


# static fields
.field public static final a:Lcom/byazt/cr/uj;

.field public static final n:Lcom/byazt/cr/uj;

.field public static final sp:Lcom/byazt/cr/uj;

.field public static final uj:Lcom/byazt/cr/uj;

.field public static final ve:Lcom/byazt/cr/uj;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/cr/uj;

    .line 2
    .line 3
    const v1, 0x7270e0

    .line 4
    .line 5
    .line 6
    const-string v2, "\u6267\u884c\u6210\u529f"

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/byazt/cr/uj;-><init>(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/byazt/cr/uj;->ve:Lcom/byazt/cr/uj;

    .line 12
    .line 13
    new-instance v0, Lcom/byazt/cr/uj;

    .line 14
    .line 15
    const v1, 0x7270e1

    .line 16
    .line 17
    .line 18
    const-string v2, "\u5165\u53c2\u4e0d\u7b26\u5408\u9884\u671f"

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Lcom/byazt/cr/uj;-><init>(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/byazt/cr/uj;->uj:Lcom/byazt/cr/uj;

    .line 24
    .line 25
    new-instance v0, Lcom/byazt/cr/uj;

    .line 26
    .line 27
    const v1, 0x7270e8

    .line 28
    .line 29
    .line 30
    const-string v2, "\u76f4\u64ad\u63d2\u4ef6\u6ca1\u6709\u521d\u59cb\u5316\u6210\u529f"

    .line 31
    .line 32
    invoke-direct {v0, v1, v2}, Lcom/byazt/cr/uj;-><init>(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/byazt/cr/uj;->n:Lcom/byazt/cr/uj;

    .line 36
    .line 37
    new-instance v0, Lcom/byazt/cr/uj;

    .line 38
    .line 39
    const v1, 0x7270e9

    .line 40
    .line 41
    .line 42
    const-string v2, "\u76f4\u64ad\u63d2\u4ef6\u901a\u4fe1bridge\u672a\u8bbe\u7f6e"

    .line 43
    .line 44
    invoke-direct {v0, v1, v2}, Lcom/byazt/cr/uj;-><init>(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/byazt/cr/uj;->a:Lcom/byazt/cr/uj;

    .line 48
    .line 49
    new-instance v0, Lcom/byazt/cr/uj;

    .line 50
    .line 51
    const v1, 0x7270eb

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1, v2}, Lcom/byazt/cr/uj;-><init>(ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lcom/byazt/cr/uj;->sp:Lcom/byazt/cr/uj;

    .line 58
    .line 59
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
