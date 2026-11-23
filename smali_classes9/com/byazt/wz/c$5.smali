.class public Lcom/byazt/wz/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/aas/c$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41,
        0x64
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/wz/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wz/c;


# direct methods
.method public constructor <init>(Lcom/byazt/wz/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wz/c$5;->c:Lcom/byazt/wz/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAppBackground()V
    .locals 0

    return-void
.end method

.method public onAppExit()V
    .locals 0

    return-void
.end method

.method public onAppForeground()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/x;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/wz/c$5;->c:Lcom/byazt/wz/c;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/byazt/wz/c;->c(Lcom/byazt/wz/c;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/byazt/rgb/c;->tt(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/byazt/wz/c$5;->c:Lcom/byazt/wz/c;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/byazt/wz/c;->gr:Lcom/byazt/aas/c$tt;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/byazt/aas/c;->tt(Lcom/byazt/aas/c$tt;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onAppStart()V
    .locals 0

    return-void
.end method
