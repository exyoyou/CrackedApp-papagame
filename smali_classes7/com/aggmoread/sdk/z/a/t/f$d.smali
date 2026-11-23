.class Lcom/aggmoread/sdk/z/a/t/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$d;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 4

    const/16 v0, 0x2bd

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_2

    const/16 v0, 0x2be

    if-eq p2, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$d;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->m(Lcom/aggmoread/sdk/z/a/t/f;)Ljava/lang/String;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$d;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->j(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/f$j;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$d;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->j(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/f$j;

    move-result-object v0

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/t/f$d;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v3}, Lcom/aggmoread/sdk/z/a/t/f;->e(Lcom/aggmoread/sdk/z/a/t/f;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/aggmoread/sdk/z/a/t/f$j;->b(Landroid/media/MediaPlayer;)V

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$d;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->u(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$d;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->u(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/a;->j()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$d;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->m(Lcom/aggmoread/sdk/z/a/t/f;)Ljava/lang/String;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$d;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->j(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/f$j;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$d;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->j(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/f$j;

    move-result-object v0

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/t/f$d;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v3}, Lcom/aggmoread/sdk/z/a/t/f;->e(Lcom/aggmoread/sdk/z/a/t/f;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/aggmoread/sdk/z/a/t/f$j;->c(Landroid/media/MediaPlayer;)V

    :cond_3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$d;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->u(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$d;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->u(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/a;->s()V

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/t/f$d;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v3}, Lcom/aggmoread/sdk/z/a/t/f;->k(Lcom/aggmoread/sdk/z/a/t/f;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/t/f$d;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v3}, Lcom/aggmoread/sdk/z/a/t/f;->k(Lcom/aggmoread/sdk/z/a/t/f;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_2
    return v1

    :cond_7
    return v0
.end method
