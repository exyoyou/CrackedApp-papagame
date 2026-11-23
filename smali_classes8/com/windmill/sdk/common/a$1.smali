.class Lcom/windmill/sdk/common/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/utils/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/a;->a(JZLcom/windmill/sdk/common/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/windmill/sdk/common/a;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$autoCloseAfterClick"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/a$1;->b:Lcom/windmill/sdk/common/a;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/windmill/sdk/common/a$1;->a:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/a$1;->b:Lcom/windmill/sdk/common/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/common/a;->a(Lcom/windmill/sdk/common/a;)Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/common/a$1;->b:Lcom/windmill/sdk/common/a;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/windmill/sdk/common/a;->b(Lcom/windmill/sdk/common/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/windmill/sdk/common/a$1;->b:Lcom/windmill/sdk/common/a;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/windmill/sdk/common/a;->a(Lcom/windmill/sdk/common/a;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/a$1;->b:Lcom/windmill/sdk/common/a;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/windmill/sdk/common/a;->a(Lcom/windmill/sdk/common/a;Landroid/app/Activity;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/windmill/sdk/common/a$1;->b:Lcom/windmill/sdk/common/a;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-static {p1, v0}, Lcom/windmill/sdk/common/a;->a(Lcom/windmill/sdk/common/a;Z)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/a$1;->b:Lcom/windmill/sdk/common/a;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/windmill/sdk/common/a;->a(Lcom/windmill/sdk/common/a;Landroid/app/Activity;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/windmill/sdk/common/a$1;->b:Lcom/windmill/sdk/common/a;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/windmill/sdk/common/a;->c(Lcom/windmill/sdk/common/a;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/windmill/sdk/common/a$1;->b:Lcom/windmill/sdk/common/a;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/windmill/sdk/common/a;->d(Lcom/windmill/sdk/common/a;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/windmill/sdk/common/a$1;->b:Lcom/windmill/sdk/common/a;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/windmill/sdk/common/a;->b(Lcom/windmill/sdk/common/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/windmill/sdk/common/a$1;->b:Lcom/windmill/sdk/common/a;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/windmill/sdk/common/a;->e(Lcom/windmill/sdk/common/a;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    iget-object p1, p0, Lcom/windmill/sdk/common/a$1;->b:Lcom/windmill/sdk/common/a;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/windmill/sdk/common/a;->f(Lcom/windmill/sdk/common/a;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    iget-boolean p1, p0, Lcom/windmill/sdk/common/a$1;->a:Z

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Lcom/windmill/sdk/common/a$1;->b:Lcom/windmill/sdk/common/a;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/windmill/sdk/common/a;->b(Lcom/windmill/sdk/common/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const/4 v0, 0x1

    .line 66
    if-ne p1, v0, :cond_1

    .line 67
    .line 68
    iget-object p1, p0, Lcom/windmill/sdk/common/a$1;->b:Lcom/windmill/sdk/common/a;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/windmill/sdk/common/a;->f(Lcom/windmill/sdk/common/a;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method
