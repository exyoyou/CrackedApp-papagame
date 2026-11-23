.class Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "gameData"


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$1;->a:Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    :goto_0
    const-string p2, "gameData"

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$1;->a:Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->onPayGameSuccess(Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
