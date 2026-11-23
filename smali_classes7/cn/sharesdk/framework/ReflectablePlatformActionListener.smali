.class public Lcn/sharesdk/framework/ReflectablePlatformActionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# instance fields
.field private a:I

.field private b:Landroid/os/Handler$Callback;

.field private c:I

.field private d:Landroid/os/Handler$Callback;

.field private e:I

.field private f:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->f:Landroid/os/Handler$Callback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Message;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->e:I

    .line 11
    .line 12
    iput v1, v0, Landroid/os/Message;->what:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aput-object p1, v1, v2

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    aput-object p2, v1, p1

    .line 26
    .line 27
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object p1, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->f:Landroid/os/Handler$Callback;

    .line 30
    .line 31
    invoke-static {v0, p1}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->b:Landroid/os/Handler$Callback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Message;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->a:I

    .line 11
    .line 12
    iput v1, v0, Landroid/os/Message;->what:I

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aput-object p1, v1, v2

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    aput-object p2, v1, p1

    .line 26
    .line 27
    const/4 p1, 0x2

    .line 28
    aput-object p3, v1, p1

    .line 29
    .line 30
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 31
    .line 32
    iget-object p1, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->b:Landroid/os/Handler$Callback;

    .line 33
    .line 34
    invoke-static {v0, p1}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->d:Landroid/os/Handler$Callback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Message;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->c:I

    .line 11
    .line 12
    iput v1, v0, Landroid/os/Message;->what:I

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aput-object p1, v1, v2

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    aput-object p2, v1, p1

    .line 26
    .line 27
    const/4 p1, 0x2

    .line 28
    aput-object p3, v1, p1

    .line 29
    .line 30
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 31
    .line 32
    iget-object p1, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->d:Landroid/os/Handler$Callback;

    .line 33
    .line 34
    invoke-static {v0, p1}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public setOnCancelCallback(ILandroid/os/Handler$Callback;)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->e:I

    .line 2
    .line 3
    iput-object p2, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->f:Landroid/os/Handler$Callback;

    .line 4
    .line 5
    return-void
.end method

.method public setOnCompleteCallback(ILandroid/os/Handler$Callback;)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->b:Landroid/os/Handler$Callback;

    .line 4
    .line 5
    return-void
.end method

.method public setOnErrorCallback(ILandroid/os/Handler$Callback;)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->c:I

    .line 2
    .line 3
    iput-object p2, p0, Lcn/sharesdk/framework/ReflectablePlatformActionListener;->d:Landroid/os/Handler$Callback;

    .line 4
    .line 5
    return-void
.end method
