.class public Lcom/facebook/drawee/backends/pipeline/info/internal/d;
.super Lj4/b;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final a:Ll3/c;

.field private final b:Lq3/j;


# direct methods
.method public constructor <init>(Ll3/c;Lq3/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "monotonicClock",
            "imagePerfState"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lj4/b;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->a:Ll3/c;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lq3/j;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "requestId",
            "isPrefetch"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lq3/j;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->a:Ll3/c;

    .line 4
    .line 5
    invoke-interface {v1}, Ll3/c;->now()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Lq3/j;->x(J)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lq3/j;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lq3/j;->w(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lq3/j;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lq3/j;->D(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lq3/j;

    .line 23
    .line 24
    invoke-virtual {p1, p3}, Lq3/j;->C(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public e(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "callerContext",
            "requestId",
            "isPrefetch"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lq3/j;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->a:Ll3/c;

    .line 4
    .line 5
    invoke-interface {v1}, Ll3/c;->now()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Lq3/j;->y(J)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lq3/j;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lq3/j;->w(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lq3/j;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lq3/j;->g(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lq3/j;

    .line 23
    .line 24
    invoke-virtual {p1, p3}, Lq3/j;->D(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lq3/j;

    .line 28
    .line 29
    invoke-virtual {p1, p4}, Lq3/j;->C(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public j(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "requestId",
            "throwable",
            "isPrefetch"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lq3/j;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->a:Ll3/c;

    .line 4
    .line 5
    invoke-interface {v0}, Ll3/c;->now()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p3, v0, v1}, Lq3/j;->x(J)V

    .line 10
    .line 11
    .line 12
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lq3/j;

    .line 13
    .line 14
    invoke-virtual {p3, p1}, Lq3/j;->w(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lq3/j;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lq3/j;->D(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lq3/j;

    .line 23
    .line 24
    invoke-virtual {p1, p4}, Lq3/j;->C(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lq3/j;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->a:Ll3/c;

    .line 4
    .line 5
    invoke-interface {v1}, Ll3/c;->now()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Lq3/j;->x(J)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;->b:Lq3/j;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lq3/j;->D(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
