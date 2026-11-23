.class public Lcom/byazt/jy/tt$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7e5,
        0x2df
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/jy/tt;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/jy/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/jy/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jy/tt$8;->c:Lcom/byazt/jy/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/jy/tt$8;->c:Lcom/byazt/jy/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/jy/tt;->sp(Lcom/byazt/jy/tt;)Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/jy/tt$8;->c:Lcom/byazt/jy/tt;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/jy/tt;->sp(Lcom/byazt/jy/tt;)Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->play()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/jy/tt$8;->c:Lcom/byazt/jy/tt;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/byazt/jy/tt;->x(Lcom/byazt/jy/tt;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/byazt/fk/sp$c;

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    iget-object v2, p0, Lcom/byazt/jy/tt$8;->c:Lcom/byazt/jy/tt;

    .line 51
    .line 52
    invoke-interface {v1, v2}, Lcom/byazt/fk/sp$c;->onResume(Lcom/byazt/fk/sp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-void

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    const-string v1, "CSJ_VIDEO_TTVideo"

    .line 59
    .line 60
    const-string v2, "play: catch exception:"

    .line 61
    .line 62
    invoke-static {v1, v2, v0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
