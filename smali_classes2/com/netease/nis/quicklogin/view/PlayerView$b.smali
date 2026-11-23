.class Lcom/netease/nis/quicklogin/view/PlayerView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/view/PlayerView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/view/PlayerView;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/view/PlayerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/view/PlayerView$b;->a:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/view/PlayerView$b;->a:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/netease/nis/quicklogin/view/PlayerView;->a(Lcom/netease/nis/quicklogin/view/PlayerView;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/netease/nis/quicklogin/view/PlayerView$b;->a:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
