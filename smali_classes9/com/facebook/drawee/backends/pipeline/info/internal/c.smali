.class public Lcom/facebook/drawee/backends/pipeline/info/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/c;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final a:Lq3/j;

.field private final b:Lq3/h;


# direct methods
.method public constructor <init>(Lq3/j;Lq3/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imagePerfState",
            "imagePerfMonitor"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/c;->a:Lq3/j;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/c;->b:Lq3/h;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "controllerId",
            "imageOrigin",
            "successful",
            "ultimateProducerName"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/c;->a:Lq3/j;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lq3/j;->v(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/c;->a:Lq3/j;

    .line 7
    .line 8
    invoke-virtual {p1, p4}, Lq3/j;->E(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/c;->b:Lq3/h;

    .line 12
    .line 13
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/c;->a:Lq3/j;

    .line 14
    .line 15
    const/4 p3, 0x1

    .line 16
    invoke-virtual {p1, p2, p3}, Lq3/h;->b(Lq3/j;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
