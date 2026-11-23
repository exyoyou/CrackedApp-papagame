.class Lcom/aggmoread/sdk/z/a/o/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/o/a;->a(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/o/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/o/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/o/a$g;->a:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/o/a$g;->a:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/o/a;->b(Lcom/aggmoread/sdk/z/a/o/a;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/o/a$g;->a:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/o/a;->b(Lcom/aggmoread/sdk/z/a/o/a;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
