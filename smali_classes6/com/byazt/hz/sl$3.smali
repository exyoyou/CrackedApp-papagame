.class public Lcom/byazt/hz/sl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0x596
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/hz/sl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/hz/sl;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/sl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hz/sl$3;->c:Lcom/byazt/hz/sl;

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
    iget-object v0, p0, Lcom/byazt/hz/sl$3;->c:Lcom/byazt/hz/sl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/hz/sl;->da(Lcom/byazt/hz/sl;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/byazt/hz/sl$3$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/byazt/hz/sl$3$1;-><init>(Lcom/byazt/hz/sl$3;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
