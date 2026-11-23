.class public Lcom/byazt/gqp/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x143,
        0x85
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/gqp/z$c;
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/gqp/z$c;

.field public c:Ljava/lang/String;

.field public n:[B

.field public tt:Ljava/lang/String;

.field public uj:Ljava/lang/String;

.field public ve:Lcom/byazt/gqp/da;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/byazt/gqp/da;Ljava/lang/String;Lcom/byazt/gqp/z$c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/byazt/gqp/z;->ve:Lcom/byazt/gqp/da;

    .line 4
    iput-object p2, p0, Lcom/byazt/gqp/z;->uj:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/byazt/gqp/z;->a:Lcom/byazt/gqp/z$c;

    return-void
.end method

.method public constructor <init>(Lcom/byazt/gqp/da;[BLcom/byazt/gqp/z$c;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/byazt/gqp/z;->ve:Lcom/byazt/gqp/da;

    .line 14
    iput-object p2, p0, Lcom/byazt/gqp/z;->n:[B

    .line 15
    iput-object p3, p0, Lcom/byazt/gqp/z;->a:Lcom/byazt/gqp/z$c;

    return-void
.end method

.method public constructor <init>(Lcom/byazt/gqp/da;[BLjava/lang/String;Ljava/lang/String;Lcom/byazt/gqp/z$c;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/byazt/gqp/z;->ve:Lcom/byazt/gqp/da;

    .line 8
    iput-object p2, p0, Lcom/byazt/gqp/z;->n:[B

    .line 9
    iput-object p3, p0, Lcom/byazt/gqp/z;->tt:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/byazt/gqp/z;->c:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcom/byazt/gqp/z;->a:Lcom/byazt/gqp/z$c;

    return-void
.end method

.method public static c(Lcom/byazt/gqp/da;Ljava/lang/String;)Lcom/byazt/gqp/z;
    .locals 2

    .line 2
    new-instance v0, Lcom/byazt/gqp/z;

    sget-object v1, Lcom/byazt/gqp/z$c;->c:Lcom/byazt/gqp/z$c;

    invoke-direct {v0, p0, p1, v1}, Lcom/byazt/gqp/z;-><init>(Lcom/byazt/gqp/da;Ljava/lang/String;Lcom/byazt/gqp/z$c;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/gqp/da;[B)Lcom/byazt/gqp/z;
    .locals 2

    .line 3
    new-instance v0, Lcom/byazt/gqp/z;

    sget-object v1, Lcom/byazt/gqp/z$c;->tt:Lcom/byazt/gqp/z$c;

    invoke-direct {v0, p0, p1, v1}, Lcom/byazt/gqp/z;-><init>(Lcom/byazt/gqp/da;[BLcom/byazt/gqp/z$c;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/gqp/da;[BLjava/lang/String;Ljava/lang/String;)Lcom/byazt/gqp/z;
    .locals 7

    .line 4
    new-instance v6, Lcom/byazt/gqp/z;

    sget-object v5, Lcom/byazt/gqp/z$c;->ve:Lcom/byazt/gqp/z$c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/byazt/gqp/z;-><init>(Lcom/byazt/gqp/da;[BLjava/lang/String;Ljava/lang/String;Lcom/byazt/gqp/z$c;)V

    return-object v6
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gqp/z;->c:Ljava/lang/String;

    return-object v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gqp/z;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
