.class public Lcom/byazt/nn/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3fc,
        0xd
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:J

.field public i:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public sp:Ljava/lang/String;

.field public tt:J

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;

.field public final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/nn/tt;->x:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method public static c(JJ)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    return-wide p0

    :cond_0
    return-wide p2
.end method


# virtual methods
.method public c()J
    .locals 4

    .line 2
    iget-wide v0, p0, Lcom/byazt/nn/tt;->c:J

    iget-wide v2, p0, Lcom/byazt/nn/tt;->tt:J

    invoke-static {v0, v1, v2, v3}, Lcom/byazt/nn/tt;->c(JJ)J

    move-result-wide v0

    return-wide v0
.end method
