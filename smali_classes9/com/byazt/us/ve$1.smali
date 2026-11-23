.class public final Lcom/byazt/us/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/g/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xfb,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/us/ve;->c(Lcom/byazt/dd/tt;Lcom/byazt/ok/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dd/tt;

.field public final synthetic tt:Lcom/byazt/ok/c;


# direct methods
.method public constructor <init>(Lcom/byazt/dd/tt;Lcom/byazt/ok/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/us/ve$1;->c:Lcom/byazt/dd/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/us/ve$1;->tt:Lcom/byazt/ok/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public tt()V
    .locals 3

    .line 1
    const-string v0, "AppInstallOptimiseHelper"

    .line 2
    .line 3
    const-string v1, "AppInstallOptimiseHelper-->onAppForeground"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/byazt/g/c;->c()Lcom/byazt/g/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Lcom/byazt/g/c;->tt(Lcom/byazt/g/c$c;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/us/ve$1;->c:Lcom/byazt/dd/tt;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/byazt/hu/u;->tt(Lcom/byazt/dd/tt;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/us/ve$1;->c:Lcom/byazt/dd/tt;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->u(Z)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "install_delay_invoke"

    .line 34
    .line 35
    iget-object v2, p0, Lcom/byazt/us/ve$1;->c:Lcom/byazt/dd/tt;

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lcom/byazt/dd/c;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/us/ve$1;->tt:Lcom/byazt/ok/c;

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/byazt/ok/c;->c()V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public ve()V
    .locals 0

    return-void
.end method
