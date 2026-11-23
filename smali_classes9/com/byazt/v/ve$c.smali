.class public Lcom/byazt/v/ve$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xe6,
        0x18
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/v/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public c:I

.field public n:Ljava/lang/String;

.field public tt:I

.field public uj:J

.field public ve:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/v/ve$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/v/ve$c;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/v/ve$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/v/ve$c;->c:I

    return p0
.end method

.method public static synthetic c(Lcom/byazt/v/ve$c;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/v/ve$c;->c:I

    return p1
.end method

.method public static synthetic c(Lcom/byazt/v/ve$c;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/v/ve$c;->uj:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/byazt/v/ve$c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/v/ve$c;->n:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic n(Lcom/byazt/v/ve$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/v/ve$c;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/v/ve$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/v/ve$c;->ve:I

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/v/ve$c;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/v/ve$c;->tt:I

    return p1
.end method

.method public static synthetic uj(Lcom/byazt/v/ve$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/v/ve$c;->tt:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic ve(Lcom/byazt/v/ve$c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/v/ve$c;->ve:I

    return p1
.end method

.method public static synthetic ve(Lcom/byazt/v/ve$c;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/byazt/v/ve$c;->uj:J

    return-wide v0
.end method
