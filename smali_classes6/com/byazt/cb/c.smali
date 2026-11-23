.class public Lcom/byazt/cb/c;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x327,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/cb/c$c;
    }
.end annotation


# instance fields
.field public c:Landroid/content/Context;

.field public tt:Lcom/byazt/cb/c$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/byazt/cb/c$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/cb/c;->c:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/byazt/cb/c;->tt:Lcom/byazt/cb/c$c;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic c(Lcom/byazt/cb/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cb/c;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/cb/c;)Lcom/byazt/cb/c$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cb/c;->tt:Lcom/byazt/cb/c$c;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/cb/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    .line 3
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/cb/c$1;

    .line 5
    .line 6
    const-string v1, "brightness onChange"

    .line 7
    .line 8
    invoke-direct {v0, p0, v1, p1, p2}, Lcom/byazt/cb/c$1;-><init>(Lcom/byazt/cb/c;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public tt()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/cb/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
