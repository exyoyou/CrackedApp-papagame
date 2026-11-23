.class Lcom/netease/nis/quicklogin/view/PlayerView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/view/PlayerView;->d()V
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
    iput-object p1, p0, Lcom/netease/nis/quicklogin/view/PlayerView$a;->a:Lcom/netease/nis/quicklogin/view/PlayerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/nis/quicklogin/view/PlayerView$a$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/netease/nis/quicklogin/view/PlayerView$a$a;-><init>(Lcom/netease/nis/quicklogin/view/PlayerView$a;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
