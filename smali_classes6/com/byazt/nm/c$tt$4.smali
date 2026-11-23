.class public Lcom/byazt/nm/c$tt$4;
.super Lcom/byazt/dhf/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x90c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nm/c$tt;->setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dhf/c;

.field public final synthetic tt:Lcom/byazt/nm/c$tt;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/c$tt;Ljava/util/function/Function;Lcom/byazt/dhf/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/c$tt$4;->tt:Lcom/byazt/nm/c$tt;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/nm/c$tt$4;->c:Lcom/byazt/dhf/c;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/byazt/dhf/c;-><init>(Ljava/util/function/Function;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/c$tt$4;->c:Lcom/byazt/dhf/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/byazt/dhf/c;->c()V

    :cond_0
    return-void
.end method

.method public c(ILjava/lang/String;Z)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/nm/c$tt$4;->tt:Lcom/byazt/nm/c$tt;

    invoke-static {v0}, Lcom/byazt/nm/c$tt;->c(Lcom/byazt/nm/c$tt;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/nm/c$tt$4;->tt:Lcom/byazt/nm/c$tt;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/byazt/nm/c$tt;->c(Lcom/byazt/nm/c$tt;Z)Z

    .line 5
    iget-object v0, p0, Lcom/byazt/nm/c$tt$4;->tt:Lcom/byazt/nm/c$tt;

    iget-object v0, v0, Lcom/byazt/nm/c$tt;->i:Lcom/byazt/nm/c;

    invoke-static {v0}, Lcom/byazt/nm/c;->c(Lcom/byazt/nm/c;)Lcom/byazt/dv/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/dv/tt;->tt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/bg/c;->c(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/nm/c$tt$4;->c:Lcom/byazt/dhf/c;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/dhf/c;->c(ILjava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/c$tt$4;->c:Lcom/byazt/dhf/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/dhf/c;->tt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
