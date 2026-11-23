.class Lcom/join/android/app/component/album/MyIconActivity$e;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/MyIconActivity;->loadImages(Lcom/join/android/app/component/album/lib/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/component/album/lib/a;

.field final synthetic c:Lcom/join/android/app/component/album/MyIconActivity;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/MyIconActivity;Lcom/join/android/app/component/album/lib/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$folder"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity$e;->c:Lcom/join/android/app/component/album/MyIconActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/android/app/component/album/MyIconActivity$e;->b:Lcom/join/android/app/component/album/lib/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity$e;->c:Lcom/join/android/app/component/album/MyIconActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/component/album/MyIconActivity;->access$600(Lcom/join/android/app/component/album/MyIconActivity;)Lcom/join/android/app/component/album/lib/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/android/app/component/album/MyIconActivity$e;->b:Lcom/join/android/app/component/album/lib/a;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/join/android/app/component/album/lib/a;->d()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/lib/b;->k(Ljava/lang/String;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Landroid/os/Message;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    iput v2, v1, Landroid/os/Message;->what:I

    .line 24
    .line 25
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity$e;->c:Lcom/join/android/app/component/album/MyIconActivity;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/join/android/app/component/album/MyIconActivity;->handler:Landroid/os/Handler;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method
