.class public final Lcom/byazt/cr/ve;
.super Lcom/byazt/cr/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x560,
        0x36
    }
.end annotation


# static fields
.field public static final uj:Lcom/byazt/cr/ve;

.field public static final ve:Lcom/byazt/cr/ve;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/cr/ve;

    .line 2
    .line 3
    const v1, 0x72720c

    .line 4
    .line 5
    .line 6
    const-string v2, "\u6267\u884c\u6210\u529f"

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/byazt/cr/ve;-><init>(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/byazt/cr/ve;->ve:Lcom/byazt/cr/ve;

    .line 12
    .line 13
    new-instance v0, Lcom/byazt/cr/ve;

    .line 14
    .line 15
    const v1, 0x72720d

    .line 16
    .line 17
    .line 18
    const-string v2, "\u5165\u53c2\u4e0d\u7b26\u5408\u9884\u671f"

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Lcom/byazt/cr/ve;-><init>(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/byazt/cr/ve;->uj:Lcom/byazt/cr/ve;

    .line 24
    .line 25
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
