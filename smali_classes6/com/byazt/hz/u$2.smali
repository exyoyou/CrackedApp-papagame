.class public Lcom/byazt/hz/u$2;
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
        0x460
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hz/u;->c(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic tt:Z

.field public final synthetic uj:Lcom/byazt/hz/u;

.field public final synthetic ve:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/u;Landroid/view/ViewGroup;Z[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hz/u$2;->uj:Lcom/byazt/hz/u;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/hz/u$2;->c:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/byazt/hz/u$2;->tt:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/hz/u$2;->ve:[Ljava/lang/String;

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
    iget-object v0, p0, Lcom/byazt/hz/u$2;->uj:Lcom/byazt/hz/u;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/hz/u$2;->c:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/hz/u;->c(Lcom/byazt/hz/u;Landroid/view/ViewGroup;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/byazt/hz/u$2;->tt:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/hz/u$2;->uj:Lcom/byazt/hz/u;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/byazt/hz/u$2;->ve:[Ljava/lang/String;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aget-object v2, v2, v3

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    invoke-static {v1, v0, v2, v3}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
