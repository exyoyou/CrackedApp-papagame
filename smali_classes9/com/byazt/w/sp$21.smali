.class public final Lcom/byazt/w/sp$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zz/my;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x728
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/w/sp;->c(Lcom/byazt/c/or;)Lcom/byazt/zz/my;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/c/or;


# direct methods
.method public constructor <init>(Lcom/byazt/c/or;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/w/sp$21;->c:Lcom/byazt/c/or;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(II)J
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$21;->c:Lcom/byazt/c/or;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/byazt/c/or;->c(II)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-wide p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 p1, 0x0

    .line 13
    .line 14
    return-wide p1
.end method
