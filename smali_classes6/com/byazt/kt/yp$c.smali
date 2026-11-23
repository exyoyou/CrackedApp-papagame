.class public Lcom/byazt/kt/yp$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x1b3
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kt/yp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field public static uj:Lcom/byazt/kpm/uj$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/kpm/uj$c<",
            "Lcom/byazt/kt/yp$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:I

.field public tt:Lcom/byazt/kt/RecyclerView$a$tt;

.field public ve:Lcom/byazt/kt/RecyclerView$a$tt;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/kpm/uj$tt;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/kpm/uj$tt;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/byazt/kt/yp$c;->uj:Lcom/byazt/kpm/uj$c;

    .line 9
    .line 10
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c()Lcom/byazt/kt/yp$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/kt/yp$c;->uj:Lcom/byazt/kpm/uj$c;

    invoke-interface {v0}, Lcom/byazt/kpm/uj$c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/kt/yp$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/byazt/kt/yp$c;

    invoke-direct {v0}, Lcom/byazt/kt/yp$c;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static c(Lcom/byazt/kt/yp$c;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/byazt/kt/yp$c;->c:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/byazt/kt/yp$c;->tt:Lcom/byazt/kt/RecyclerView$a$tt;

    .line 5
    iput-object v0, p0, Lcom/byazt/kt/yp$c;->ve:Lcom/byazt/kt/RecyclerView$a$tt;

    .line 6
    sget-object v0, Lcom/byazt/kt/yp$c;->uj:Lcom/byazt/kpm/uj$c;

    invoke-interface {v0, p0}, Lcom/byazt/kpm/uj$c;->c(Ljava/lang/Object;)Z

    return-void
.end method

.method public static tt()V
    .locals 1

    .line 1
    :cond_0
    sget-object v0, Lcom/byazt/kt/yp$c;->uj:Lcom/byazt/kpm/uj$c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/kpm/uj$c;->c()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void
.end method
