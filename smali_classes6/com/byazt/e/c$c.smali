.class public Lcom/byazt/e/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1bb,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public tt:Ljava/lang/String;

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;


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

.method public static synthetic c(Lcom/byazt/e/c$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/e/c$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/e/c$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/e/c$c;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/e/c$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/e/c$c;->tt:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/e/c$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/e/c$c;->uj:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/e/c$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/e/c$c;->ve:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lcom/byazt/e/c$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/e/c$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()Lcom/byazt/e/c;
    .locals 1

    .line 3
    new-instance v0, Lcom/byazt/e/c;

    invoke-direct {v0, p0}, Lcom/byazt/e/c;-><init>(Lcom/byazt/e/c$c;)V

    return-object v0
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/e/c$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/e/c$c;->tt:Ljava/lang/String;

    return-object p0
.end method

.method public uj(Ljava/lang/String;)Lcom/byazt/e/c$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/e/c$c;->n:Ljava/lang/String;

    return-object p0
.end method

.method public ve(Ljava/lang/String;)Lcom/byazt/e/c$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/e/c$c;->uj:Ljava/lang/String;

    return-object p0
.end method
