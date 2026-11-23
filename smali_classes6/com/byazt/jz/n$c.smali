.class public Lcom/byazt/jz/n$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xe8,
        0x97
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/jz/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public n:[B

.field public tt:Ljava/lang/String;

.field public uj:Z

.field public ve:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lcom/byazt/jz/n$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jz/n$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/byazt/jz/n$c;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/jz/n$c;->uj:Z

    return-object p0
.end method

.method public c([B)Lcom/byazt/jz/n$c;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/jz/n$c;->n:[B

    return-object p0
.end method

.method public c()Lcom/byazt/jz/n;
    .locals 2

    .line 4
    new-instance v0, Lcom/byazt/jz/n;

    invoke-direct {v0}, Lcom/byazt/jz/n;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/byazt/jz/n$c;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/byazt/jz/n;->c(Lcom/byazt/jz/n;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/byazt/jz/n$c;->tt:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/byazt/jz/n;->tt(Lcom/byazt/jz/n;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-boolean v1, p0, Lcom/byazt/jz/n$c;->ve:Z

    invoke-static {v0, v1}, Lcom/byazt/jz/n;->c(Lcom/byazt/jz/n;Z)Z

    .line 8
    iget-boolean v1, p0, Lcom/byazt/jz/n$c;->uj:Z

    invoke-static {v0, v1}, Lcom/byazt/jz/n;->tt(Lcom/byazt/jz/n;Z)Z

    .line 9
    iget-object v1, p0, Lcom/byazt/jz/n$c;->n:[B

    invoke-static {v0, v1}, Lcom/byazt/jz/n;->c(Lcom/byazt/jz/n;[B)[B

    return-object v0
.end method
