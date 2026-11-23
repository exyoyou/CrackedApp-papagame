.class public Lcom/byazt/uo/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/aas/c$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8b,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/uo/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public c:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/uo/c$c;->c:Lcom/byazt/ete/ic;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAppBackground()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c$c;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    const-string v1, "splash_enter_background"

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-string v4, "splash_ad"

    .line 10
    .line 11
    invoke-static {v0, v4, v1, v2, v3}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onAppExit()V
    .locals 0

    return-void
.end method

.method public onAppForeground()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c$c;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    const-string v1, "splash_enter_foreground"

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-string v4, "splash_ad"

    .line 10
    .line 11
    invoke-static {v0, v4, v1, v2, v3}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onAppStart()V
    .locals 0

    return-void
.end method
