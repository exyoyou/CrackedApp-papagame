.class public Lcom/byazt/un/NativeVideoTsView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0x3cf
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/un/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;ZZLjava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/un/NativeVideoTsView;


# direct methods
.method public constructor <init>(Lcom/byazt/un/NativeVideoTsView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/NativeVideoTsView$1;->c:Lcom/byazt/un/NativeVideoTsView;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView$1;->c:Lcom/byazt/un/NativeVideoTsView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/un/NativeVideoTsView;->c(Lcom/byazt/un/NativeVideoTsView;)Lcom/byazt/it/ve;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView$1;->c:Lcom/byazt/un/NativeVideoTsView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/un/NativeVideoTsView;->tt(Lcom/byazt/un/NativeVideoTsView;)Lcom/byazt/it/ve;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/byazt/un/NativeVideoTsView;->c(Lcom/byazt/un/NativeVideoTsView;Lcom/byazt/it/ve;)Lcom/byazt/it/ve;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
