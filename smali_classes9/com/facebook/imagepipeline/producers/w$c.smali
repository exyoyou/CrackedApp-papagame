.class public Lcom/facebook/imagepipeline/producers/w$c;
.super Lcom/facebook/imagepipeline/producers/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private f:J

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "consumer",
            "producerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/v;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k(Lcom/facebook/imagepipeline/producers/w$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/imagepipeline/producers/w$c;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic l(Lcom/facebook/imagepipeline/producers/w$c;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/imagepipeline/producers/w$c;->f:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic m(Lcom/facebook/imagepipeline/producers/w$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/imagepipeline/producers/w$c;->g:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic n(Lcom/facebook/imagepipeline/producers/w$c;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/imagepipeline/producers/w$c;->g:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic o(Lcom/facebook/imagepipeline/producers/w$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/imagepipeline/producers/w$c;->h:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic p(Lcom/facebook/imagepipeline/producers/w$c;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/imagepipeline/producers/w$c;->h:J

    .line 2
    .line 3
    return-wide p1
.end method
