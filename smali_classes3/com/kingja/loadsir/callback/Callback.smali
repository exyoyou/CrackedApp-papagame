.class public abstract Lcom/kingja/loadsir/callback/Callback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingja/loadsir/callback/Callback$OnReloadListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private onReloadListener:Lcom/kingja/loadsir/callback/Callback$OnReloadListener;

.field private rootView:Landroid/view/View;

.field private successViewVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/content/Context;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/kingja/loadsir/callback/Callback;->rootView:Landroid/view/View;

    .line 4
    iput-object p2, p0, Lcom/kingja/loadsir/callback/Callback;->context:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/kingja/loadsir/callback/Callback;->onReloadListener:Lcom/kingja/loadsir/callback/Callback$OnReloadListener;

    return-void
.end method

.method static synthetic access$000(Lcom/kingja/loadsir/callback/Callback;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kingja/loadsir/callback/Callback;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/kingja/loadsir/callback/Callback;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kingja/loadsir/callback/Callback;->rootView:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/kingja/loadsir/callback/Callback;)Lcom/kingja/loadsir/callback/Callback$OnReloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kingja/loadsir/callback/Callback;->onReloadListener:Lcom/kingja/loadsir/callback/Callback$OnReloadListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public copy()Lcom/kingja/loadsir/callback/Callback;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    .line 8
    .line 9
    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 16
    .line 17
    .line 18
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/io/ObjectInputStream;

    .line 28
    .line 29
    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :goto_0
    check-cast v1, Lcom/kingja/loadsir/callback/Callback;

    .line 45
    .line 46
    return-object v1
.end method

.method public getRootView()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/kingja/loadsir/callback/Callback;->onCreateView()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/kingja/loadsir/callback/Callback;->rootView:Landroid/view/View;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/kingja/loadsir/callback/Callback;->context:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/kingja/loadsir/callback/Callback;->onBuildView(Landroid/content/Context;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/kingja/loadsir/callback/Callback;->context:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/kingja/loadsir/callback/Callback;->onBuildView(Landroid/content/Context;)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/kingja/loadsir/callback/Callback;->rootView:Landroid/view/View;

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/kingja/loadsir/callback/Callback;->rootView:Landroid/view/View;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/kingja/loadsir/callback/Callback;->context:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/kingja/loadsir/callback/Callback;->onCreateView()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/kingja/loadsir/callback/Callback;->rootView:Landroid/view/View;

    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lcom/kingja/loadsir/callback/Callback;->rootView:Landroid/view/View;

    .line 46
    .line 47
    new-instance v1, Lcom/kingja/loadsir/callback/Callback$a;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/kingja/loadsir/callback/Callback$a;-><init>(Lcom/kingja/loadsir/callback/Callback;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/kingja/loadsir/callback/Callback;->context:Landroid/content/Context;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/kingja/loadsir/callback/Callback;->rootView:Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {p0, v0, v1}, Lcom/kingja/loadsir/callback/Callback;->onViewCreate(Landroid/content/Context;Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/kingja/loadsir/callback/Callback;->rootView:Landroid/view/View;

    .line 63
    .line 64
    return-object v0
.end method

.method public getSuccessVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kingja/loadsir/callback/Callback;->successViewVisible:Z

    .line 2
    .line 3
    return v0
.end method

.method public obtainRootView()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kingja/loadsir/callback/Callback;->rootView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kingja/loadsir/callback/Callback;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kingja/loadsir/callback/Callback;->onCreateView()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/kingja/loadsir/callback/Callback;->rootView:Landroid/view/View;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/kingja/loadsir/callback/Callback;->rootView:Landroid/view/View;

    .line 19
    .line 20
    return-object v0
.end method

.method public onAttach(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onBuildView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract onCreateView()I
.end method

.method public onDetach()V
    .locals 0

    return-void
.end method

.method protected onReloadEvent(Landroid/content/Context;Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onRetry(Landroid/content/Context;Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onViewCreate(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setCallback(Landroid/content/Context;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;)Lcom/kingja/loadsir/callback/Callback;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kingja/loadsir/callback/Callback;->context:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kingja/loadsir/callback/Callback;->onReloadListener:Lcom/kingja/loadsir/callback/Callback$OnReloadListener;

    .line 4
    .line 5
    return-object p0
.end method

.method setSuccessVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kingja/loadsir/callback/Callback;->successViewVisible:Z

    .line 2
    .line 3
    return-void
.end method
