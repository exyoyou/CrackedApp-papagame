.class Lcom/aggmoread/sdk/z/a/t/f$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aggmoread/sdk/z/a/t/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/t/f;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/t/f;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$f;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$f;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->j(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/f$j;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$f;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->j(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/f$j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/aggmoread/sdk/z/a/t/f$j;->g(Landroid/media/MediaPlayer;)V

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$f;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/a/t/f;->d(Lcom/aggmoread/sdk/z/a/t/f;I)I

    return-void
.end method
