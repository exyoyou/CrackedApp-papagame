.class public Lcom/byazt/yf/x$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1fc,
        0x3e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/yf/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public c:Z

.field public tt:Ljava/lang/String;

.field public uj:Z

.field public ve:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/yf/x$c;->c:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/byazt/yf/x$c;->tt:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/byazt/yf/x$c;->ve:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/byazt/yf/x$c;->uj:Z

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic c(Lcom/byazt/yf/x$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/yf/x$c;->c:Z

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/yf/x$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yf/x$c;->tt:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/yf/x$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/yf/x$c;->uj:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic ve(Lcom/byazt/yf/x$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/yf/x$c;->ve:Z

    return p0
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lcom/byazt/yf/x$c;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/yf/x$c;->tt:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/byazt/yf/x$c;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/yf/x$c;->c:Z

    return-object p0
.end method

.method public c()Lcom/byazt/yf/x;
    .locals 2

    .line 4
    new-instance v0, Lcom/byazt/yf/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/byazt/yf/x;-><init>(Lcom/byazt/yf/x$c;Lcom/byazt/yf/x$1;)V

    return-object v0
.end method

.method public tt(Z)Lcom/byazt/yf/x$c;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/yf/x$c;->ve:Z

    return-object p0
.end method

.method public ve(Z)Lcom/byazt/yf/x$c;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/yf/x$c;->uj:Z

    return-object p0
.end method
