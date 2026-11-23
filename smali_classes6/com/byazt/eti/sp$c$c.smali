.class public Lcom/byazt/eti/sp$c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x180,
        0x427
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/eti/sp$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public c:Ljava/lang/String;

.field public n:I

.field public sp:I

.field public tt:I

.field public uj:Z

.field public ve:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Default"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/eti/sp$c$c;->c:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/byazt/eti/sp$c$c;->uj:Z

    .line 10
    .line 11
    iput v0, p0, Lcom/byazt/eti/sp$c$c;->n:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput v1, p0, Lcom/byazt/eti/sp$c$c;->a:I

    .line 15
    .line 16
    iput v0, p0, Lcom/byazt/eti/sp$c$c;->sp:I

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lcom/byazt/eti/sp$c$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/eti/sp$c$c;->sp:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic c(Lcom/byazt/eti/sp$c$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/eti/sp$c$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/eti/sp$c$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/eti/sp$c$c;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic sp(Lcom/byazt/eti/sp$c$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/eti/sp$c$c;->n:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic tt(Lcom/byazt/eti/sp$c$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/eti/sp$c$c;->tt:I

    return p0
.end method

.method public static synthetic uj(Lcom/byazt/eti/sp$c$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/eti/sp$c$c;->uj:Z

    return p0
.end method

.method public static synthetic ve(Lcom/byazt/eti/sp$c$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/eti/sp$c$c;->ve:I

    return p0
.end method


# virtual methods
.method public c(I)Lcom/byazt/eti/sp$c$c;
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/eti/sp$c$c;->tt:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/eti/sp$c$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/eti/sp$c$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/byazt/eti/sp$c$c;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/eti/sp$c$c;->uj:Z

    return-object p0
.end method

.method public c()Lcom/byazt/eti/sp$c;
    .locals 2

    .line 5
    new-instance v0, Lcom/byazt/eti/sp$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/byazt/eti/sp$c;-><init>(Lcom/byazt/eti/sp$c$c;Lcom/byazt/eti/sp$1;)V

    return-object v0
.end method

.method public tt(I)Lcom/byazt/eti/sp$c$c;
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/eti/sp$c$c;->a:I

    return-object p0
.end method

.method public uj(I)Lcom/byazt/eti/sp$c$c;
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/eti/sp$c$c;->n:I

    return-object p0
.end method

.method public ve(I)Lcom/byazt/eti/sp$c$c;
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/eti/sp$c$c;->sp:I

    return-object p0
.end method
