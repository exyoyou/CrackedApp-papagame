.class public Lcom/byazt/yf/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1fc,
        0x47
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/yf/x$c;
    }
.end annotation


# instance fields
.field public c:Z

.field public tt:Ljava/lang/String;

.field public uj:Z

.field public ve:Z


# direct methods
.method private constructor <init>(Lcom/byazt/yf/x$c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/byazt/yf/x$c;->c(Lcom/byazt/yf/x$c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/yf/x;->c:Z

    .line 4
    invoke-static {p1}, Lcom/byazt/yf/x$c;->tt(Lcom/byazt/yf/x$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yf/x;->tt:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/byazt/yf/x$c;->ve(Lcom/byazt/yf/x$c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/yf/x;->ve:Z

    .line 6
    invoke-static {p1}, Lcom/byazt/yf/x$c;->uj(Lcom/byazt/yf/x$c;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/yf/x;->uj:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/yf/x$c;Lcom/byazt/yf/x$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/yf/x;-><init>(Lcom/byazt/yf/x$c;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/x;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/yf/x;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public uj()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/yf/x;->uj:Z

    .line 2
    .line 3
    return v0
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/yf/x;->ve:Z

    .line 2
    .line 3
    return v0
.end method
