.class public Lcom/byazt/tv/tt$tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xef,
        0xf0
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/tv/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "tt"
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public tt:I

.field public ve:I


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

.method public static synthetic c()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/byazt/tv/tt$tt;->tt()V

    return-void
.end method

.method private c(Lcom/byazt/tv/c;)V
    .locals 3

    .line 3
    invoke-virtual {p1}, Lcom/byazt/tv/c;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/byazt/tv/tt$tt;->tt:I

    if-le v1, v2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/byazt/tv/c;->x()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/tv/tt$tt;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/byazt/tv/tt$tt;->tt:I

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/tv/tt$tt;Lcom/byazt/tv/c;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/tv/tt$tt;->c(Lcom/byazt/tv/c;)V

    return-void
.end method

.method private static tt()V
    .locals 6

    .line 1
    sget-object v0, Lcom/byazt/tv/tt;->ve:[Lcom/byazt/tv/tt$tt;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_0

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    const-string v5, ""

    .line 11
    .line 12
    iput-object v5, v4, Lcom/byazt/tv/tt$tt;->c:Ljava/lang/String;

    .line 13
    .line 14
    iput v2, v4, Lcom/byazt/tv/tt$tt;->tt:I

    .line 15
    .line 16
    iput v2, v4, Lcom/byazt/tv/tt$tt;->ve:I

    .line 17
    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/tv/tt$tt;->ve:I

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "-"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/byazt/tv/tt$tt;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/byazt/tv/tt$tt;->tt:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
