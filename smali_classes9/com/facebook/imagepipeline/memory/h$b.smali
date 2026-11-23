.class public Lcom/facebook/imagepipeline/memory/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x180

    .line 3
    iput v0, p0, Lcom/facebook/imagepipeline/memory/h$b;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/memory/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/h$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/memory/h;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/memory/h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/memory/h;-><init>(Lcom/facebook/imagepipeline/memory/h$b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/memory/h$b;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public c(I)Lcom/facebook/imagepipeline/memory/h$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxBitmapCount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/imagepipeline/memory/h$b;->a:I

    .line 2
    .line 3
    return-object p0
.end method
