.class public Lcom/byazt/b/uj$1$1;
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
        0x4b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/b/uj$1;->c(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/b/uj$1;


# direct methods
.method public constructor <init>(Lcom/byazt/b/uj$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/b/uj$1$1;->c:Lcom/byazt/b/uj$1;

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
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/uj$1$1;->c:Lcom/byazt/b/uj$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/b/uj$1;->c:Lcom/byazt/b/uj;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/b/uj;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
