.class public final Lcom/byazt/w/sp$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/c/nb;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x739
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/w/sp;->c(Lcom/byazt/c/qp;)Lcom/byazt/c/nb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/c/qp;


# direct methods
.method public constructor <init>(Lcom/byazt/c/qp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/w/sp$18;->c:Lcom/byazt/c/qp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(II)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$18;->c:Lcom/byazt/c/qp;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/byazt/c/qp;->c(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
