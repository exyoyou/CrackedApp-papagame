.class public Lcom/byazt/jz/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xe8,
        0x2e
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/jz/n$c;
    }
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

.method public static synthetic c(Lcom/byazt/jz/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jz/n;->c:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/jz/n;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/jz/n;->ve:Z

    return p1
.end method

.method public static synthetic c(Lcom/byazt/jz/n;[B)[B
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/jz/n;->n:[B

    return-object p1
.end method

.method public static synthetic tt(Lcom/byazt/jz/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jz/n;->tt:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic tt(Lcom/byazt/jz/n;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/jz/n;->uj:Z

    return p1
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/jz/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method public tt()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/byazt/jz/n;->uj:Z

    return v0
.end method

.method public ve()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jz/n;->n:[B

    .line 2
    .line 3
    return-object v0
.end method
