.class public Lcom/byazt/feb/tt$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x15f,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/feb/tt;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/feb/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/feb/tt;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/feb/tt$1;->c:Lcom/byazt/feb/tt;

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
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    .line 8
    instance-of v0, p1, Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {}, Lcom/byazt/feb/c;->c()Lcom/byazt/feb/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lcom/byazt/feb/c;->c(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/feb/tt$1;->c:Lcom/byazt/feb/tt;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/byazt/feb/tt;->c(Ljava/lang/String;)Lcom/byazt/pik/ve;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/feb/tt$1;->c:Lcom/byazt/feb/tt;

    .line 30
    .line 31
    invoke-static {v0, p1}, Lcom/byazt/feb/tt;->c(Lcom/byazt/feb/tt;Lcom/byazt/pik/ve;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
