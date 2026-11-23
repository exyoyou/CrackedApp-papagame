.class Lcom/facebook/imagepipeline/producers/m$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/JobScheduler$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/m$c;-><init>(Lcom/facebook/imagepipeline/producers/m;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/m;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field final synthetic c:I

.field final synthetic d:Lcom/facebook/imagepipeline/producers/m$c;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/m$c;Lcom/facebook/imagepipeline/producers/m;Lcom/facebook/imagepipeline/producers/ProducerContext;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$maxBitmapSize",
            "val$producerContext",
            "val$this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/m$c$a;->d:Lcom/facebook/imagepipeline/producers/m$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/m$c$a;->a:Lcom/facebook/imagepipeline/producers/m;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/m$c$a;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 6
    .line 7
    iput p4, p0, Lcom/facebook/imagepipeline/producers/m$c$a;->c:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/image/e;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "status"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m$c$a;->d:Lcom/facebook/imagepipeline/producers/m$c;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/m$c;->q(Lcom/facebook/imagepipeline/producers/m$c;)Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->o()Lcom/facebook/imageformat/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/facebook/imageformat/c;->b()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "image_format"

    .line 18
    .line 19
    invoke-interface {v0, v2, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->h(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m$c$a;->d:Lcom/facebook/imagepipeline/producers/m$c;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/m$c;->o:Lcom/facebook/imagepipeline/producers/m;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/m;->c(Lcom/facebook/imagepipeline/producers/m;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    const/16 v0, 0x10

    .line 33
    .line 34
    invoke-static {p2, v0}, Lcom/facebook/imagepipeline/producers/b;->m(II)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m$c$a;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/m$c$a;->d:Lcom/facebook/imagepipeline/producers/m$c;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/facebook/imagepipeline/producers/m$c;->o:Lcom/facebook/imagepipeline/producers/m;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/m;->f(Lcom/facebook/imagepipeline/producers/m;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Lcom/facebook/common/util/f;->n(Landroid/net/Uri;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->u()Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->s()Lcom/facebook/imagepipeline/common/e;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget v2, p0, Lcom/facebook/imagepipeline/producers/m$c$a;->c:I

    .line 75
    .line 76
    invoke-static {v1, v0, p1, v2}, Ll4/a;->b(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/e;Lcom/facebook/imagepipeline/image/e;I)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/image/e;->j0(I)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m$c$a;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 84
    .line 85
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->c()Lcom/facebook/imagepipeline/core/i;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/j;->B()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m$c$a;->d:Lcom/facebook/imagepipeline/producers/m$c;

    .line 100
    .line 101
    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/producers/m$c;->r(Lcom/facebook/imagepipeline/producers/m$c;Lcom/facebook/imagepipeline/image/e;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m$c$a;->d:Lcom/facebook/imagepipeline/producers/m$c;

    .line 105
    .line 106
    invoke-static {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/m$c;->s(Lcom/facebook/imagepipeline/producers/m$c;Lcom/facebook/imagepipeline/image/e;I)V

    .line 107
    .line 108
    .line 109
    :cond_4
    return-void
.end method
