.class public Lcom/byazt/kyz/ve$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pr/tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x222,
        0x620
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kyz/ve$9;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kyz/ve$9;


# direct methods
.method public constructor <init>(Lcom/byazt/kyz/ve$9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kyz/ve$9$1;->c:Lcom/byazt/kyz/ve$9;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/nc/a;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/kyz/ve$9$1;->c:Lcom/byazt/kyz/ve$9;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/byazt/kyz/ve$9;->ve:Lcom/byazt/kyz/ve;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/byazt/kyz/ve;->getLifecycleId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-static {p1, v0}, Lcom/byazt/rgb/tt;->ve(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
