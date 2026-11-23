.class public Lcom/byazt/t/tt$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x42,
        0xc2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/t/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public c:I

.field public n:J

.field public sp:J

.field public tt:J

.field public uj:J

.field public ve:J

.field public x:Lcom/byazt/t/tt;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/byazt/t/tt$c;->c:I

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/byazt/t/tt$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/t/tt$c;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic c(Lcom/byazt/t/tt$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/t/tt$c;->c:I

    return p0
.end method

.method public static synthetic n(Lcom/byazt/t/tt$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/t/tt$c;->n:J

    return-wide v0
.end method

.method public static synthetic sp(Lcom/byazt/t/tt$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/t/tt$c;->sp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic tt(Lcom/byazt/t/tt$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/t/tt$c;->tt:J

    return-wide v0
.end method

.method public static synthetic uj(Lcom/byazt/t/tt$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/t/tt$c;->uj:J

    return-wide v0
.end method

.method public static synthetic ve(Lcom/byazt/t/tt$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/t/tt$c;->ve:J

    return-wide v0
.end method

.method public static synthetic x(Lcom/byazt/t/tt$c;)Lcom/byazt/t/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/t/tt$c;->x:Lcom/byazt/t/tt;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(I)Lcom/byazt/t/tt$c;
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/t/tt$c;->a:I

    return-object p0
.end method

.method public c(J)Lcom/byazt/t/tt$c;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/t/tt$c;->tt:J

    return-object p0
.end method

.method public c(Lcom/byazt/t/tt;)Lcom/byazt/t/tt$c;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/t/tt$c;->x:Lcom/byazt/t/tt;

    return-object p0
.end method

.method public c()Lcom/byazt/t/tt;
    .locals 2

    .line 5
    new-instance v0, Lcom/byazt/t/tt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/byazt/t/tt;-><init>(Lcom/byazt/t/tt$c;Lcom/byazt/t/tt$1;)V

    return-object v0
.end method

.method public n(J)Lcom/byazt/t/tt$c;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/t/tt$c;->sp:J

    return-object p0
.end method

.method public tt(J)Lcom/byazt/t/tt$c;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/t/tt$c;->ve:J

    return-object p0
.end method

.method public uj(J)Lcom/byazt/t/tt$c;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/t/tt$c;->n:J

    return-object p0
.end method

.method public ve(J)Lcom/byazt/t/tt$c;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/t/tt$c;->uj:J

    return-object p0
.end method
