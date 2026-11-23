.class public Lcom/windmill/sdk/banner/a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/banner/a$a;
    }
.end annotation


# static fields
.field static final e:I = 0x15444


# instance fields
.field a:J

.field b:Z

.field c:Lcom/windmill/sdk/banner/a$a;

.field d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/windmill/sdk/banner/a$a;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "listener",
            "interval"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/windmill/sdk/banner/a;->b:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/windmill/sdk/banner/a;->d:Landroid/view/View;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/windmill/sdk/banner/a;->c:Lcom/windmill/sdk/banner/a$a;

    .line 10
    .line 11
    iput-wide p3, p0, Lcom/windmill/sdk/banner/a;->a:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const v0, 0x15444

    .line 1
    iget-wide v1, p0, Lcom/windmill/sdk/banner/a;->a:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public a(Lcom/windmill/sdk/banner/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/windmill/sdk/banner/a;->c:Lcom/windmill/sdk/banner/a$a;

    return-void
.end method

.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stopped"
        }
    .end annotation

    .line 2
    iput-boolean p1, p0, Lcom/windmill/sdk/banner/a;->b:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/banner/a;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    const v0, 0x15444

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    if-ne v0, p1, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lcom/windmill/sdk/banner/a;->c:Lcom/windmill/sdk/banner/a$a;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/windmill/sdk/banner/a;->d:Landroid/view/View;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/windmill/sdk/utils/ViewUtil;->isVisible(Landroid/view/View;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/windmill/sdk/banner/a;->c:Lcom/windmill/sdk/banner/a$a;

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/windmill/sdk/banner/a$a;->isViewAttached()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/windmill/sdk/banner/a;->c:Lcom/windmill/sdk/banner/a$a;

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/windmill/sdk/banner/a$a;->visible()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/banner/a;->c:Lcom/windmill/sdk/banner/a$a;

    .line 35
    .line 36
    invoke-interface {p1}, Lcom/windmill/sdk/banner/a$a;->inVisible()V

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {p0}, Lcom/windmill/sdk/banner/a;->a()V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method
