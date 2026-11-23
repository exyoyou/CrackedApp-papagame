.class Lcom/haima/hmcp/utils/SystemMediaPlayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/utils/SystemMediaPlayer;->setMediaPlayerListenrs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/utils/SystemMediaPlayer;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/utils/SystemMediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer$3;->this$0:Lcom/haima/hmcp/utils/SystemMediaPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer$3;->this$0:Lcom/haima/hmcp/utils/SystemMediaPlayer;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/haima/hmcp/utils/SystemMediaPlayer;->access$000(Lcom/haima/hmcp/utils/SystemMediaPlayer;)Landroid/media/MediaPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
