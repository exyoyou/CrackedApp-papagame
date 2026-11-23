.class Lcom/aggmoread/sdk/z/a/l/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/l/d;->a(Lcom/aggmoread/sdk/z/a/u/m;Lcom/aggmoread/sdk/z/a/t/e;Lcom/aggmoread/sdk/z/a/l/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/l/e$a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/l/d;Lcom/aggmoread/sdk/z/a/l/e$a;)V
    .locals 0

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/l/d$c;->a:Lcom/aggmoread/sdk/z/a/l/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d$c;->a:Lcom/aggmoread/sdk/z/a/l/e$a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/aggmoread/sdk/z/a/l/e$a;->a(I)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/l/d$c;->a:Lcom/aggmoread/sdk/z/a/l/e$a;

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/a/l/e$a;->b()V

    :cond_0
    return-void
.end method
