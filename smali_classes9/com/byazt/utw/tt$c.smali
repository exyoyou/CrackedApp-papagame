.class public final Lcom/byazt/utw/tt$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c2,
        0xc2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/utw/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/utw/a$tt;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public i:Ljava/lang/Object;

.field public n:Lcom/byazt/emg/ve;

.field public sp:I

.field public tt:Ljava/lang/String;

.field public uj:Lcom/byazt/byh/c;

.field public ve:Lcom/byazt/utw/x;

.field public x:Lcom/byazt/utw/tt$tt;


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
.method public c(I)Lcom/byazt/utw/tt$c;
    .locals 0

    .line 11
    iput p1, p0, Lcom/byazt/utw/tt$c;->sp:I

    return-object p0
.end method

.method public c(Lcom/byazt/byh/c;)Lcom/byazt/utw/tt$c;
    .locals 1

    if-eqz p1, :cond_0

    .line 6
    iput-object p1, p0, Lcom/byazt/utw/tt$c;->uj:Lcom/byazt/byh/c;

    return-object p0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cache == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/byazt/emg/ve;)Lcom/byazt/utw/tt$c;
    .locals 1

    if-eqz p1, :cond_0

    .line 8
    iput-object p1, p0, Lcom/byazt/utw/tt$c;->n:Lcom/byazt/emg/ve;

    return-object p0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "db == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/byazt/utw/tt$tt;)Lcom/byazt/utw/tt$c;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/byazt/utw/tt$c;->x:Lcom/byazt/utw/tt$tt;

    return-object p0
.end method

.method public c(Lcom/byazt/utw/x;)Lcom/byazt/utw/tt$c;
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/byazt/utw/tt$c;->ve:Lcom/byazt/utw/x;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "urls is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/Object;)Lcom/byazt/utw/tt$c;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/byazt/utw/tt$c;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/utw/tt$c;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/byazt/utw/tt$c;->c:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rawKey == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/util/List;)Lcom/byazt/utw/tt$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/utw/a$tt;",
            ">;)",
            "Lcom/byazt/utw/tt$c;"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/byazt/utw/tt$c;->a:Ljava/util/List;

    return-object p0
.end method

.method public c()Lcom/byazt/utw/tt;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/byazt/utw/tt$c;->uj:Lcom/byazt/byh/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/utw/tt$c;->n:Lcom/byazt/emg/ve;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/utw/tt$c;->c:Ljava/lang/String;

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/byazt/utw/tt$c;->tt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/byazt/utw/tt$c;->ve:Lcom/byazt/utw/x;

    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Lcom/byazt/utw/tt;

    invoke-direct {v0, p0}, Lcom/byazt/utw/tt;-><init>(Lcom/byazt/utw/tt$c;)V

    return-object v0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/utw/tt$c;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/utw/tt$c;->tt:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "key == null"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method
