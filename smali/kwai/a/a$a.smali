.class public Lkwai/a/a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkwai/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkwai/a/a;


# direct methods
.method public constructor <init>(Lkwai/a/a;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkwai/a/a$a;->a:Lkwai/a/a;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/16 v0, 0x1000

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lkwai/a/a$a;->a:Lkwai/a/a;

    .line 11
    .line 12
    iget-wide v0, p1, Lkwai/a/a;->b:J

    .line 13
    .line 14
    const-wide/16 v2, 0x2710

    .line 15
    .line 16
    add-long/2addr v0, v2

    .line 17
    iput-wide v0, p1, Lkwai/a/a;->b:J

    .line 18
    .line 19
    invoke-virtual {p1}, Lkwai/a/a;->a()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
