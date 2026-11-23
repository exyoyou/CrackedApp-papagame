.class public Lcom/byazt/b/rh$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xdf,
        0x2ee
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/b/rh;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Lcom/byazt/b/rh;


# direct methods
.method public constructor <init>(Lcom/byazt/b/rh;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/b/rh$3;->tt:Lcom/byazt/b/rh;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/b/rh$3;->c:I

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
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/rh$3;->tt:Lcom/byazt/b/rh;

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/b/rh$3;->c:I

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/b/rh;->uj(Lcom/byazt/b/rh;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/b/rh;->c(Lcom/byazt/b/rh;IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
