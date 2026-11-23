.class public Lcom/byazt/lph/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x189,
        0x14
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/lph/tt;

.field public final tt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/byazt/lph/tt;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/lph/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/lph/c;->c:Lcom/byazt/lph/tt;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/lph/c;->tt:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/lph/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lph/c;->c:Lcom/byazt/lph/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/lph/c;->tt:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
