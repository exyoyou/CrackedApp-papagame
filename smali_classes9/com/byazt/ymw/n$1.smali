.class public Lcom/byazt/ymw/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ce,
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ymw/n;->c(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic tt:Lcom/byazt/ymw/n;


# direct methods
.method public constructor <init>(Lcom/byazt/ymw/n;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ymw/n$1;->tt:Lcom/byazt/ymw/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ymw/n$1;->c:Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ymw/n$1;->tt:Lcom/byazt/ymw/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ymw/n;->c(Lcom/byazt/ymw/n;)Lcom/byazt/tn/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/byazt/ymw/n$1;->c:Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/tn/c;->c(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
