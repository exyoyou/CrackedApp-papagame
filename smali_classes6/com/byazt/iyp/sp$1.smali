.class public final Lcom/byazt/iyp/sp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x399,
        0x87
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iyp/sp;->tt(Landroid/app/Activity;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/iyp/sp$c;

.field public final synthetic tt:Ljava/lang/ref/WeakReference;

.field public final synthetic uj:I

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/iyp/sp$c;Ljava/lang/ref/WeakReference;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iyp/sp$1;->c:Lcom/byazt/iyp/sp$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/iyp/sp$1;->tt:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/iyp/sp$1;->ve:I

    .line 6
    .line 7
    iput p4, p0, Lcom/byazt/iyp/sp$1;->uj:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/iyp/sp$1;->c:Lcom/byazt/iyp/sp$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/byazt/iyp/sp$c;->da:Ljava/lang/Runnable;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/iyp/sp$1;->tt:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/app/Activity;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v0}, Lcom/byazt/iyp/sp;->n(Landroid/app/Activity;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget v3, p0, Lcom/byazt/iyp/sp$1;->ve:I

    .line 32
    .line 33
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/iyp/sp;->c(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method
