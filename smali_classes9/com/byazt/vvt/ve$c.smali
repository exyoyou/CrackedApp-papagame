.class public Lcom/byazt/vvt/ve$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd2,
        0x18
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/vvt/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/byazt/dj/tt;

.field public c:I

.field public n:I

.field public tt:Ljava/lang/String;

.field public uj:I

.field public ve:J


# direct methods
.method public constructor <init>(ILjava/lang/String;IJLcom/byazt/dj/tt;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/vvt/ve$c;->n:I

    .line 6
    .line 7
    iput p1, p0, Lcom/byazt/vvt/ve$c;->c:I

    .line 8
    .line 9
    iput-object p2, p0, Lcom/byazt/vvt/ve$c;->tt:Ljava/lang/String;

    .line 10
    .line 11
    iput p3, p0, Lcom/byazt/vvt/ve$c;->uj:I

    .line 12
    .line 13
    iput-wide p4, p0, Lcom/byazt/vvt/ve$c;->ve:J

    .line 14
    .line 15
    iput-object p6, p0, Lcom/byazt/vvt/ve$c;->a:Lcom/byazt/dj/tt;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a(Lcom/byazt/vvt/ve$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/vvt/ve$c;->n:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic c(Lcom/byazt/vvt/ve$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/vvt/ve$c;->c:I

    return p0
.end method

.method public static synthetic n(Lcom/byazt/vvt/ve$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/vvt/ve$c;->uj:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic tt(Lcom/byazt/vvt/ve$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/vvt/ve$c;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/vvt/ve$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/vvt/ve$c;->ve:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic ve(Lcom/byazt/vvt/ve$c;)Lcom/byazt/dj/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/vvt/ve$c;->a:Lcom/byazt/dj/tt;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/vvt/ve$c;->n:I

    return-void
.end method
