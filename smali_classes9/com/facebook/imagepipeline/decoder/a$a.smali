.class Lcom/facebook/imagepipeline/decoder/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/imagepipeline/decoder/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/decoder/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/decoder/a;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/decoder/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/decoder/a$a;->a:Lcom/facebook/imagepipeline/decoder/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/image/e;ILcom/facebook/imagepipeline/image/j;Lcom/facebook/imagepipeline/common/c;)Lcom/facebook/imagepipeline/image/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "length",
            "qualityInfo",
            "options"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->o()Lcom/facebook/imageformat/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a$a;->a:Lcom/facebook/imagepipeline/decoder/a;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/a;->d(Lcom/facebook/imagepipeline/image/e;ILcom/facebook/imagepipeline/image/j;Lcom/facebook/imagepipeline/common/c;)Lcom/facebook/imagepipeline/image/d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object v1, Lcom/facebook/imageformat/b;->c:Lcom/facebook/imageformat/c;

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a$a;->a:Lcom/facebook/imagepipeline/decoder/a;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/a;->c(Lcom/facebook/imagepipeline/image/e;ILcom/facebook/imagepipeline/image/j;Lcom/facebook/imagepipeline/common/c;)Lcom/facebook/imagepipeline/image/c;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1
    sget-object v1, Lcom/facebook/imageformat/b;->j:Lcom/facebook/imageformat/c;

    .line 28
    .line 29
    if-ne v0, v1, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a$a;->a:Lcom/facebook/imagepipeline/decoder/a;

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/a;->b(Lcom/facebook/imagepipeline/image/e;ILcom/facebook/imagepipeline/image/j;Lcom/facebook/imagepipeline/common/c;)Lcom/facebook/imagepipeline/image/c;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_2
    sget-object p2, Lcom/facebook/imageformat/c;->c:Lcom/facebook/imageformat/c;

    .line 39
    .line 40
    if-eq v0, p2, :cond_3

    .line 41
    .line 42
    iget-object p2, p0, Lcom/facebook/imagepipeline/decoder/a$a;->a:Lcom/facebook/imagepipeline/decoder/a;

    .line 43
    .line 44
    invoke-virtual {p2, p1, p4}, Lcom/facebook/imagepipeline/decoder/a;->e(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/c;)Lcom/facebook/imagepipeline/image/d;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_3
    new-instance p2, Lcom/facebook/imagepipeline/decoder/DecodeException;

    .line 50
    .line 51
    const-string p3, "unknown image format"

    .line 52
    .line 53
    invoke-direct {p2, p3, p1}, Lcom/facebook/imagepipeline/decoder/DecodeException;-><init>(Ljava/lang/String;Lcom/facebook/imagepipeline/image/e;)V

    .line 54
    .line 55
    .line 56
    throw p2
.end method
