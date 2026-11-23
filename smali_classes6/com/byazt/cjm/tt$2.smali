.class public Lcom/byazt/cjm/tt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4db,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cjm/tt;->c(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/cjm/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/cjm/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cjm/tt$2;->c:Lcom/byazt/cjm/tt;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/cjm/tt$2;->c:Lcom/byazt/cjm/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/cjm/tt;->c(Lcom/byazt/cjm/tt;)Lcom/byazt/cjm/c$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/cjm/tt$2;->c:Lcom/byazt/cjm/tt;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/byazt/cjm/tt;->tt(Lcom/byazt/cjm/tt;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/byazt/cjm/tt$2;->c:Lcom/byazt/cjm/tt;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/byazt/cjm/tt;->ve(Lcom/byazt/cjm/tt;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-interface {v0, v3, v1, v2}, Lcom/byazt/cjm/c$c;->c(ZLjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
