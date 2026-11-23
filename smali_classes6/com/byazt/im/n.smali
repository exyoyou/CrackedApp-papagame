.class public Lcom/byazt/im/n;
.super Lcom/byazt/im/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x548,
        0x2e
    }
.end annotation


# static fields
.field public static n:I = 0x2

.field public static uj:I = 0x1


# instance fields
.field public a:Lcom/byazt/dj/tt;

.field public i:Lcom/byazt/tdq/n;

.field public sp:Lcom/byazt/ete/bm;

.field public x:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/tdq/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/im/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/im/n;->a:Lcom/byazt/dj/tt;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/im/n;->sp:Lcom/byazt/ete/bm;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/byazt/im/n;->x:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    iput-object p3, p0, Lcom/byazt/im/n;->i:Lcom/byazt/tdq/n;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/im/n;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Lcom/byazt/ete/bm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/im/n;->sp:Lcom/byazt/ete/bm;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Lcom/byazt/tdq/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/im/n;->i:Lcom/byazt/tdq/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Lcom/byazt/dj/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/im/n;->a:Lcom/byazt/dj/tt;

    .line 2
    .line 3
    return-object v0
.end method
