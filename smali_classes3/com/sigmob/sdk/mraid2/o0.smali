.class public final synthetic Lcom/sigmob/sdk/mraid2/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/mraid2/r;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/mraid2/r;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/o0;->b:Lcom/sigmob/sdk/mraid2/r;

    iput p2, p0, Lcom/sigmob/sdk/mraid2/o0;->c:I

    iput p3, p0, Lcom/sigmob/sdk/mraid2/o0;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/o0;->b:Lcom/sigmob/sdk/mraid2/r;

    iget v1, p0, Lcom/sigmob/sdk/mraid2/o0;->c:I

    iget v2, p0, Lcom/sigmob/sdk/mraid2/o0;->d:I

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/mraid2/r;->b(Lcom/sigmob/sdk/mraid2/r;II)V

    return-void
.end method
