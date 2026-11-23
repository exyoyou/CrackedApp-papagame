.class public Lcom/byazt/uo/tt$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8b,
        0x2e7
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uo/tt;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/uo/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/uo/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uo/tt$6;->c:Lcom/byazt/uo/tt;

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
    :try_start_0
    iget-object v0, p0, Lcom/byazt/uo/tt$6;->c:Lcom/byazt/uo/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/uo/tt;->sl(Lcom/byazt/uo/tt;)Lcom/byazt/uo/SlideInterceptView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/byazt/uo/tt$6;->c:Lcom/byazt/uo/tt;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/byazt/uo/tt;->sl(Lcom/byazt/uo/tt;)Lcom/byazt/uo/SlideInterceptView;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :catch_0
    return-void
.end method
