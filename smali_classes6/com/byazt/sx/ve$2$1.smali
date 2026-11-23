.class public Lcom/byazt/sx/ve$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3a0,
        0x3ce
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sx/ve$2;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/sx/ve$2;


# direct methods
.method public constructor <init>(Lcom/byazt/sx/ve$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sx/ve$2$1;->c:Lcom/byazt/sx/ve$2;

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
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/vx/yv;->tt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-static {v0}, Lcom/byazt/vx/yv;->c(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/sx/ve$2$1;->c:Lcom/byazt/sx/ve$2;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/byazt/sx/ve$2;->c:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {}, Lcom/byazt/sx/ve;->sp()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    invoke-static {v0, v1, v2}, Lcom/byazt/sx/ve;->c(Landroid/content/Context;J)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/byazt/sx/ve;->x()V

    .line 29
    .line 30
    .line 31
    return-void
.end method
