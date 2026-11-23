.class public Lcom/byazt/yf/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1fc,
        0x43
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/ll/tt;

.field public tt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/byazt/ll/tt;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ll/tt;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/yf/u;->c:Lcom/byazt/ll/tt;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/yf/u;->tt:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/ll/tt;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/u;->c:Lcom/byazt/ll/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/u;->tt:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
